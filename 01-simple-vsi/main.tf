provider "ibm" {
  region = var.region
}

data "ibm_is_zones" "this" {
  region = var.region
}

data "ibm_resource_group" "this" {
  name = var.ibm_resource_group
}

resource "random_id" "this" {
  byte_length = 2
}
resource "tls_private_key" "insecure" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

locals {
  ssh_key_public  = sensitive(tls_private_key.insecure.public_key_openssh)
  ssh_key_private = sensitive(tls_private_key.insecure.private_key_pem)
}

resource "ibm_is_ssh_key" "this" {
  name       = "${var.prefix}-${var.region}-${random_id.this.hex}-ssh-key"
  public_key = local.ssh_key_public

  # temporary idempotent workaround until RCS-3945/PR-3701 be merged
  lifecycle {
    ignore_changes = [
      public_key,
    ]
  }
}

resource "ibm_is_vpc" "this" {
  name           = "${var.prefix}-${var.region}-${random_id.this.hex}-vpc"
  resource_group = data.ibm_resource_group.this.id
}

resource "ibm_is_subnet" "this" {
  name                     = "${var.prefix}-${var.region}-${random_id.this.hex}-subnet"
  zone                     = data.ibm_is_zones.this.zones[0]
  vpc                      = ibm_is_vpc.this.id
  total_ipv4_address_count = var.total_ipv4_address_count
}

#########1#########2#########3#########4#########5#########6#########7#########8
# SG Rules
#########1#########2#########3#########4#########5#########6#########7#########8

resource "ibm_is_security_group_rule" "icmp" {
  group     = ibm_is_vpc.this.default_security_group
  direction = "inbound"
  remote    = "0.0.0.0/0"

  icmp {
    code = 0
    type = 8
  }
}

resource "ibm_is_security_group_rule" "ssh" {
  group     = ibm_is_vpc.this.default_security_group
  direction = "inbound"
  remote    = "0.0.0.0/0"

  tcp {
    port_min = 22
    port_max = 22
  }
}

data "ibm_is_image" "ubuntu-20-04-3" {
  name = "ibm-ubuntu-20-04-3-minimal-amd64-1"
}

resource "ibm_is_instance" "this" {
  depends_on = [ibm_is_security_group_rule.ssh]

  name    = "${var.prefix}-${var.region}-${random_id.this.hex}-vsi"
  vpc     = ibm_is_vpc.this.id
  zone    = data.ibm_is_zones.this.zones[0]
  keys    = [ibm_is_ssh_key.this.id]
  image   = data.ibm_is_image.ubuntu-20-04-3.id
  profile = var.profile

  primary_network_interface {
    subnet = ibm_is_subnet.this.id
  }
}

resource "ibm_is_floating_ip" "this" {
  name   = "${var.prefix}-${var.region}-${random_id.this.hex}-this"
  target = ibm_is_instance.this.primary_network_interface[0].id
}

resource "null_resource" "ssh_to_vsi" {
  triggers = {
    fip_instance_id = ibm_is_instance.this.id
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    host        = ibm_is_floating_ip.this.address
    private_key = local.ssh_key_private
    timeout     = "10m"
  }
  provisioner "remote-exec" {
    inline = [
      "echo $(uname -a)",
    ]
  }
}

resource "local_file" "temp_private_key_to_vsi" {
  depends_on = [
    ibm_is_instance.this,
    ibm_is_floating_ip.this,
  ]
  filename        = "prv_key"
  content         = local.ssh_key_private
  file_permission = "0600"
}
