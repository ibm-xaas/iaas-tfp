The Log

```
ubuntu@d469a0e5c748:/iaas-tfp/00-dev-env$ cd ../02-packer-ubuntu-22.04/
ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$ ./prod_test_create.sh
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.38.6

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/random from the dependency lock file
- Reusing previous version of hashicorp/local from the dependency lock file
- Reusing previous version of hashicorp/tls from the dependency lock file
- Reusing previous version of hashicorp/null from the dependency lock file
- Reusing previous version of ibm-cloud/ibm from the dependency lock file
- Installing hashicorp/random v3.3.2...
- Installed hashicorp/random v3.3.2 (signed by HashiCorp)
- Installing hashicorp/local v2.2.3...
- Installed hashicorp/local v2.2.3 (signed by HashiCorp)
- Installing hashicorp/tls v4.0.1...
- Installed hashicorp/tls v4.0.1 (signed by HashiCorp)
- Installing hashicorp/null v3.1.1...
- Installed hashicorp/null v3.1.1 (signed by HashiCorp)
- Installing ibm-cloud/ibm v1.43.0...
- Installed ibm-cloud/ibm v1.43.0 (self-signed, key ID AAD3B791C49CC253)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/cli/plugins/signing.html

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.38.6
data.ibm_is_image.ubuntu: Reading...
data.ibm_resource_group.this: Reading...
data.ibm_is_zones.this: Reading...
data.ibm_is_zones.this: Read complete after 1s [id=2022-07-26 00:49:37.783603535 +0000 UTC]
data.ibm_resource_group.this: Read complete after 1s [id=2885830dd63945e9b3c4e40a3d51cb5e]
data.ibm_is_image.ubuntu: Read complete after 1s [id=r014-0acbdcb5-a68f-4a52-98ea-4da4fe89bacb]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create
 <= read (data resources)

Terraform will perform the following actions:

  # data.ibm_is_image.ubuntu-20-04-3-docker will be read during apply
  # (config refers to values not yet known)
 <= data "ibm_is_image" "ubuntu-20-04-3-docker" {
      + architecture   = (known after apply)
      + checksum       = (known after apply)
      + crn            = (known after apply)
      + encryption     = (known after apply)
      + encryption_key = (known after apply)
      + id             = (known after apply)
      + name           = (known after apply)
      + os             = (known after apply)
      + source_volume  = (known after apply)
      + status         = (known after apply)
    }

  # ibm_is_floating_ip.one_from_the_image will be created
  + resource "ibm_is_floating_ip" "one_from_the_image" {
      + address                 = (known after apply)
      + crn                     = (known after apply)
      + id                      = (known after apply)
      + name                    = (known after apply)
      + resource_controller_url = (known after apply)
      + resource_crn            = (known after apply)
      + resource_group          = (known after apply)
      + resource_group_name     = (known after apply)
      + resource_name           = (known after apply)
      + resource_status         = (known after apply)
      + status                  = (known after apply)
      + tags                    = (known after apply)
      + target                  = (known after apply)
      + target_list             = (known after apply)
      + zone                    = (known after apply)
    }

  # ibm_is_instance.one_from_the_image will be created
  + resource "ibm_is_instance" "one_from_the_image" {
      + availability_policy_host_failure  = (known after apply)
      + bandwidth                         = (known after apply)
      + crn                               = (known after apply)
      + default_trusted_profile_auto_link = (known after apply)
      + disks                             = (known after apply)
      + force_action                      = false
      + gpu                               = (known after apply)
      + id                                = (known after apply)
      + image                             = (known after apply)
      + keys                              = (known after apply)
      + memory                            = (known after apply)
      + metadata_service_enabled          = (known after apply)
      + name                              = (known after apply)
      + placement_target                  = (known after apply)
      + profile                           = "cx2-2x4"
      + resource_controller_url           = (known after apply)
      + resource_crn                      = (known after apply)
      + resource_group                    = (known after apply)
      + resource_group_name               = (known after apply)
      + resource_name                     = (known after apply)
      + resource_status                   = (known after apply)
      + status                            = (known after apply)
      + status_reasons                    = (known after apply)
      + tags                              = (known after apply)
      + total_network_bandwidth           = (known after apply)
      + total_volume_bandwidth            = (known after apply)
      + vcpu                              = (known after apply)
      + volume_attachments                = (known after apply)
      + vpc                               = (known after apply)
      + wait_before_delete                = true
      + zone                              = "us-east-1"

      + boot_volume {
          + encryption = (known after apply)
          + iops       = (known after apply)
          + name       = (known after apply)
          + profile    = (known after apply)
          + size       = (known after apply)
          + snapshot   = (known after apply)
          + volume_id  = (known after apply)
        }

      + network_interfaces {
          + allow_ip_spoofing    = (known after apply)
          + id                   = (known after apply)
          + name                 = (known after apply)
          + primary_ipv4_address = (known after apply)
          + security_groups      = (known after apply)
          + subnet               = (known after apply)

          + primary_ip {
              + address       = (known after apply)
              + auto_delete   = (known after apply)
              + href          = (known after apply)
              + name          = (known after apply)
              + reserved_ip   = (known after apply)
              + resource_type = (known after apply)
            }
        }

      + primary_network_interface {
          + allow_ip_spoofing    = false
          + id                   = (known after apply)
          + name                 = (known after apply)
          + port_speed           = (known after apply)
          + primary_ipv4_address = (known after apply)
          + security_groups      = (known after apply)
          + subnet               = (known after apply)

          + primary_ip {
              + address       = (known after apply)
              + auto_delete   = (known after apply)
              + href          = (known after apply)
              + name          = (known after apply)
              + reserved_ip   = (known after apply)
              + resource_type = (known after apply)
            }
        }
    }

  # ibm_is_security_group_rule.http will be created
  + resource "ibm_is_security_group_rule" "http" {
      + direction   = "inbound"
      + group       = (known after apply)
      + id          = (known after apply)
      + ip_version  = "ipv4"
      + protocol    = (known after apply)
      + related_crn = (known after apply)
      + remote      = "0.0.0.0/0"
      + rule_id     = (known after apply)

      + tcp {
          + port_max = 80
          + port_min = 80
        }
    }

  # ibm_is_security_group_rule.icmp will be created
  + resource "ibm_is_security_group_rule" "icmp" {
      + direction   = "inbound"
      + group       = (known after apply)
      + id          = (known after apply)
      + ip_version  = "ipv4"
      + protocol    = (known after apply)
      + related_crn = (known after apply)
      + remote      = "0.0.0.0/0"
      + rule_id     = (known after apply)

      + icmp {
          + code = 0
          + type = 8
        }
    }

  # ibm_is_security_group_rule.ssh will be created
  + resource "ibm_is_security_group_rule" "ssh" {
      + direction   = "inbound"
      + group       = (known after apply)
      + id          = (known after apply)
      + ip_version  = "ipv4"
      + protocol    = (known after apply)
      + related_crn = (known after apply)
      + remote      = "0.0.0.0/0"
      + rule_id     = (known after apply)

      + tcp {
          + port_max = 22
          + port_min = 22
        }
    }

  # ibm_is_ssh_key.this will be created
  + resource "ibm_is_ssh_key" "this" {
      + crn                     = (known after apply)
      + fingerprint             = (known after apply)
      + id                      = (known after apply)
      + length                  = (known after apply)
      + name                    = (known after apply)
      + public_key              = (sensitive)
      + resource_controller_url = (known after apply)
      + resource_crn            = (known after apply)
      + resource_group          = (known after apply)
      + resource_group_name     = (known after apply)
      + resource_name           = (known after apply)
      + tags                    = (known after apply)
      + type                    = (known after apply)
    }

  # ibm_is_subnet.this will be created
  + resource "ibm_is_subnet" "this" {
      + access_tags                  = (known after apply)
      + available_ipv4_address_count = (known after apply)
      + crn                          = (known after apply)
      + id                           = (known after apply)
      + ip_version                   = "ipv4"
      + ipv4_cidr_block              = (known after apply)
      + name                         = (known after apply)
      + network_acl                  = (known after apply)
      + public_gateway               = (known after apply)
      + resource_controller_url      = (known after apply)
      + resource_crn                 = (known after apply)
      + resource_group               = (known after apply)
      + resource_group_name          = (known after apply)
      + resource_name                = (known after apply)
      + resource_status              = (known after apply)
      + routing_table                = (known after apply)
      + status                       = (known after apply)
      + tags                         = (known after apply)
      + total_ipv4_address_count     = 256
      + vpc                          = (known after apply)
      + zone                         = "us-east-1"
    }

  # ibm_is_vpc.this will be created
  + resource "ibm_is_vpc" "this" {
      + address_prefix_management   = "auto"
      + classic_access              = false
      + crn                         = (known after apply)
      + cse_source_addresses        = (known after apply)
      + default_network_acl         = (known after apply)
      + default_network_acl_crn     = (known after apply)
      + default_network_acl_name    = (known after apply)
      + default_routing_table       = (known after apply)
      + default_routing_table_name  = (known after apply)
      + default_security_group      = (known after apply)
      + default_security_group_crn  = (known after apply)
      + default_security_group_name = (known after apply)
      + id                          = (known after apply)
      + name                        = (known after apply)
      + resource_controller_url     = (known after apply)
      + resource_crn                = (known after apply)
      + resource_group              = "2885830dd63945e9b3c4e40a3d51cb5e"
      + resource_group_name         = (known after apply)
      + resource_name               = (known after apply)
      + resource_status             = (known after apply)
      + security_group              = (known after apply)
      + status                      = (known after apply)
      + subnets                     = (known after apply)
      + tags                        = (known after apply)
    }

  # local_file.temp_private_key_to_one_from_the_image will be created
  + resource "local_file" "temp_private_key_to_one_from_the_image" {
      + content              = (sensitive)
      + directory_permission = "0777"
      + file_permission      = "0600"
      + filename             = "prv_key"
      + id                   = (known after apply)
    }

  # null_resource.run_packer will be created
  + resource "null_resource" "run_packer" {
      + id       = (known after apply)
      + triggers = (known after apply)
    }

  # null_resource.ssh_one_from_the_image will be created
  + resource "null_resource" "ssh_one_from_the_image" {
      + id       = (known after apply)
      + triggers = (known after apply)
    }

  # random_id.this will be created
  + resource "random_id" "this" {
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 2
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
    }

  # tls_private_key.insecure will be created
  + resource "tls_private_key" "insecure" {
      + algorithm                     = "RSA"
      + ecdsa_curve                   = "P224"
      + id                            = (known after apply)
      + private_key_openssh           = (sensitive value)
      + private_key_pem               = (sensitive value)
      + private_key_pem_pkcs8         = (sensitive value)
      + public_key_fingerprint_md5    = (known after apply)
      + public_key_fingerprint_sha256 = (known after apply)
      + public_key_openssh            = (known after apply)
      + public_key_pem                = (known after apply)
      + rsa_bits                      = 4096
    }

Plan: 13 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + baked_image = {
      + architecture   = (known after apply)
      + checksum       = (known after apply)
      + crn            = (known after apply)
      + encryption     = (known after apply)
      + encryption_key = (known after apply)
      + id             = (known after apply)
      + identifier     = null
      + name           = (known after apply)
      + os             = (known after apply)
      + source_volume  = (known after apply)
      + status         = (known after apply)
      + visibility     = null
    }
random_id.this: Creating...
random_id.this: Creation complete after 0s [id=EUA]
tls_private_key.insecure: Creating...
ibm_is_vpc.this: Creating...
tls_private_key.insecure: Creation complete after 2s [id=bf8fccf13df7c0bf4b196e28791f009d18352ed1]
ibm_is_ssh_key.this: Creating...
ibm_is_ssh_key.this: Creation complete after 3s [id=r014-f428cf49-c9da-4c9e-9e1f-9c0a5aaf1964]
ibm_is_vpc.this: Still creating... [10s elapsed]
ibm_is_vpc.this: Creation complete after 14s [id=r014-60efee98-88ab-4e88-831a-aa1218bc2fe3]
ibm_is_security_group_rule.http: Creating...
ibm_is_security_group_rule.ssh: Creating...
ibm_is_security_group_rule.icmp: Creating...
ibm_is_subnet.this: Creating...
ibm_is_security_group_rule.ssh: Creation complete after 2s [id=r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-28a7eaec-8c50-44df-a78e-239a391a5be2]
ibm_is_security_group_rule.http: Creation complete after 3s [id=r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-45b65dd1-22bf-486c-89bd-7f83c1ceb172]
ibm_is_security_group_rule.icmp: Creation complete after 4s [id=r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-aa6aee21-4bbe-4b08-8659-a9d63bb21a08]
ibm_is_subnet.this: Still creating... [10s elapsed]
ibm_is_subnet.this: Creation complete after 12s [id=0757-90cc5bcc-020c-40e9-b8df-b743c544af2e]
null_resource.run_packer: Creating...
null_resource.run_packer: Provisioning with 'local-exec'...
null_resource.run_packer (local-exec): Executing: ["/bin/sh" "-c" "cd ./packer\nansible-galaxy install geerlingguy.docker\nansible-galaxy install vantaworks.goss\npacker version\npacker init ./ubuntu_focal.pkr.hcl\ntimeout 60m packer build \\\n-var region=us-east \\\n-var subnet_id=0757-90cc5bcc-020c-40e9-b8df-b743c544af2e \\\n-var resource_group_id=2885830dd63945e9b3c4e40a3d51cb5e \\\n-var vsi_base_image_name=ibm-ubuntu-22-04-minimal-amd64-1 \\\n-var vsi_profile=cx2-2x4 \\\n-var vsi_user_data_file=./shell/user_data.sh \\\n-var ansible_file=./ansible/playbook.yml \\\n-var image_name=ubuntu-focal-docker-0-1-0-1140 \\\n-force \\\n-color=false \\\n./ubuntu_focal.pkr.hcl\n"]
null_resource.run_packer (local-exec): Starting galaxy role install process
null_resource.run_packer (local-exec): [WARNING]: - geerlingguy.docker (4.2.4) is already installed - use --force to
null_resource.run_packer (local-exec): change version to unspecified
null_resource.run_packer (local-exec): Starting galaxy role install process
null_resource.run_packer (local-exec): [WARNING]: - vantaworks.goss (master) is already installed - use --force to
null_resource.run_packer (local-exec): change version to unspecified
null_resource.run_packer (local-exec): Packer v1.8.2
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: *************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: * Initializing IBM Cloud Packer Plugin - VPC Infrastructure *
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: *************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating VPC service...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: VPC service creation successful!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Retrieving Subnet 0757-90cc5bcc-020c-40e9-b8df-b743c544af2e information...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Subnet Information successfully retrieved ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: VPC ID: r014-60efee98-88ab-4e88-831a-aa1218bc2fe3
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Zone: us-east-1
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Fetching Base Image ID...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Base Image ID fetched: r014-0acbdcb5-a68f-4a52-98ea-4da4fe89bacb
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating SSH Public and Private Key Pair...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Writing Private SSH Key to a file ssh_keys/id_rsa
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Writing Public SSH Key to a file ssh_keys/id_rsa.pub
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Public and Private SSH Key Pair successfully created.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating a new SSH key for VPC...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: SSH Key for VPC successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: SSH Key for VPC's Name: packer-vpc-ssh-key-0509
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: SSH Key for VPC's ID: r014-7c7e229a-b8e5-41de-a9a3-95b6142ef5a2
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating Instance...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Fetching ImageID...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ImageID fetched: ibm-ubuntu-22-04-minimal-amd64-1
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance's Name: packer-vpc-vsi-0509
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance's ID: 0757_af036ae0-998b-429a-9b64-46ad746e3e13
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting for the instance to become ACTIVE...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance is ACTIVE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Getting public IP...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Reserve a Floating IP and associate it to the instance's network interface
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Reserving a Floating IP
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting for the Floating IP to become ACTIVE...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Floating IP is ACTIVE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating a temp Security Group on VPC r014-60efee98-88ab-4e88-831a-aa1218bc2fe3 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Temp Security Group on VPC successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Security Group's Name: packer-vpc-security-group-0509
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Security Group's ID: r014-648c41e7-efaf-4dbb-987a-d8e06ae9e3f3
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating Security Group's rule to allow ssh connection...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Security Group's rule to allow ssh connection successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Attaching Instance to the Security Group
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance successfully added to the Security Group.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Using SSH communicator to connect: 52.116.125.117
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting for SSH to become available...
null_resource.run_packer: Still creating... [30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Connected to SSH!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ________________________   ____________________________________
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: __  ____/___  ____/___  | / /___  ____/__  ___/____  _/__  ___/
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: _  / __  __  __/   __   |/ / __  __/   _____ \  __  /  _____ \
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: / /_/ /  _  /___   _  /|  /  _  /___   ____/ / __/ /   ____/ /
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: \____/   /_____/   /_/ |_/   /_____/   /____/  /___/   /____/
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Provisioning with shell script: ./shell/user_data.sh
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: unattended-upgrades/jammy,now 2.8ubuntu1 all [installed,automatic]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Reading package lists...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Building dependency tree...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Reading state information...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: The following packages will be REMOVED:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:   unattended-upgrades
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: 0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: After this operation, 446 kB disk space will be freed.
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: (Reading database ... 70033 files and directories currently installed.)
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Removing unattended-upgrades (2.8ubuntu1) ...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Processing triggers for man-db (2.10.2-1) ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: unattended-upgrades/jammy,now 2.8ubuntu1 all [residual-config]
null_resource.run_packer: Still creating... [40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: sudo: unable to resolve host packer-vpc-vsi-0509: Name or service not known
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 1595 (apt)...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Reading package lists...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Building dependency tree...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Reading state information...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: The following packages will be REMOVED:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:   unattended-upgrades*
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: 0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: After this operation, 0 B of additional disk space will be used.
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: (Reading database ... 70006 files and directories currently installed.)
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Purging configuration files for unattended-upgrades (2.8ubuntu1) ...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: debconf: unable to initialize frontend: Dialog
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: debconf: falling back to frontend: Readline
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: dpkg: warning: while removing unattended-upgrades, directory '/var/log/unattended-upgrades' not empty so not removed
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: unattended-upgrades/jammy 2.8ubuntu1 all
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Provisioning with Ansible...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Setting up proxy adapter for Ansible....
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Executing Ansible: ansible-playbook -e packer_build_name="ubuntu-focal" -e packer_builder_type=ibmcloud-vpc --ssh-extra-args '-o IdentitiesOnly=yes' -e ansible_ssh_private_key_file=/tmp/ansible-key1389957410 -i /tmp/packer-provisioner-ansible4196804037 /iaas-tfp/02-packer-ubuntu-22.04/packer/ansible/playbook.yml
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: [DEPRECATION WARNING]: "include" is deprecated, use include_tasks/import_tasks
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: instead. This feature will be removed in version 2.16. Deprecation warnings can
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:  be disabled by setting deprecation_warnings=False in ansible.cfg.
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: PLAY [play Install Geerlingguy Docker] *****************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [Gathering Facts] *********************************************************
null_resource.run_packer: Still creating... [50s elapsed]
null_resource.run_packer: Still creating... [1m0s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [Add universe repository for focal] ***************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [Install gnupg2] **********************************************************
null_resource.run_packer: Still creating... [1m10s elapsed]
null_resource.run_packer: Still creating... [1m20s elapsed]
null_resource.run_packer: Still creating... [1m30s elapsed]
null_resource.run_packer: Still creating... [1m40s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : include_tasks] **************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : include_tasks] **************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: included: /home/ubuntu/.ansible/roles/geerlingguy.docker/tasks/setup-Debian.yml for default
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure old versions of Docker are not installed.] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure dependencies are installed.] *****************
null_resource.run_packer: Still creating... [1m50s elapsed]
null_resource.run_packer: Still creating... [2m0s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure additional dependencies are installed (on Ubuntu < 20.04 and any other systems).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure additional dependencies are installed (on Ubuntu >= 20.04).] ***
null_resource.run_packer: Still creating... [2m10s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Add Docker apt key.] ********************************
null_resource.run_packer: Still creating... [2m20s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure curl is present (on older systems without SNI).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Add Docker apt key (alternative for older systems without SNI).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Add Docker repository.] *****************************
null_resource.run_packer: Still creating... [2m30s elapsed]
null_resource.run_packer: Still creating... [2m40s elapsed]
null_resource.run_packer: Still creating... [2m50s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Install Docker.] ************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Install Docker (with downgrade option).] ************
null_resource.run_packer: Still creating... [3m0s elapsed]
null_resource.run_packer: Still creating... [3m10s elapsed]
null_resource.run_packer: Still creating... [3m20s elapsed]
null_resource.run_packer: Still creating... [3m30s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure /etc/docker/ directory exists.] **************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Configure Docker daemon options.] *******************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure Docker is started and enabled at boot.] ******
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure handlers are notified now to avoid firewall conflicts.] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: RUNNING HANDLER [geerlingguy.docker : restart docker] **************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : include_tasks] **************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: included: /home/ubuntu/.ansible/roles/geerlingguy.docker/tasks/docker-compose.yml for default
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Check current docker-compose version.] **************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : set_fact] *******************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Delete existing docker-compose version if it's different.] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Install Docker Compose (if configured).] ************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : include_tasks] **************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: included: /home/ubuntu/.ansible/roles/geerlingguy.docker/tasks/docker-users.yml for default
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure docker users are added to the docker group.] ***
null_resource.run_packer: Still creating... [3m40s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default] => (item=ubuntu)
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: PLAY [play Install the latest goss] ********************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [Gathering Facts] *********************************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [vantaworks.goss : Version Detection : Find Available Versions] ***********
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [vantaworks.goss : Version Detection : Setting the facts straight] ********
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [vantaworks.goss : Version Detection : Select newest version] *************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [vantaworks.goss : Install : Check if goss is already installed] **********
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [vantaworks.goss : Install : Download and install Goss] *******************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [vantaworks.goss : Uninstall : Remove goss binary] ************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: PLAY RECAP *********************************************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: default                    : ok=24   changed=9    unreachable=0    failed=0    skipped=9    rescued=0    ignored=0
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Provisioning with Goss
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Configured to run on Linux
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Creating directory: /tmp/goss
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Installing Goss from, https://github.com/aelsabbahy/goss/releases/download/v0.3.9/goss-linux-amd64
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Downloading Goss to /tmp/goss-0.3.9-linux-amd64
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:                                  Dload  Upload   Total   Spent    Left  Speed
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: 100 10.0M  100 10.0M    0     0  23.4M      0 --:--:-- --:--:-- --:--:-- 23.4M
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: goss version v0.3.9
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Uploading goss tests...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Uploading ./goss/goss.yaml
null_resource.run_packer: Still creating... [3m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Running goss tests...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Running GOSS render command: cd /tmp/goss &&  /tmp/goss-0.3.9-linux-amd64    render > /tmp/goss-spec.yaml
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Goss render ran successfully
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Running GOSS render debug command: cd /tmp/goss &&  /tmp/goss-0.3.9-linux-amd64    render -d > /tmp/debug-goss-spec.yaml
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Goss render debug ran successfully
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Running GOSS validate command: cd /tmp/goss &&   /tmp/goss-0.3.9-linux-amd64    validate --retry-timeout 0s --sleep 1s
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Total Duration: 0.008s
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Count: 3, Failed: 0, Skipped: 0
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Goss validate ran successfully
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Downloading spec file and debug info
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Downloading Goss specs from, /tmp/goss-spec.yaml and /tmp/debug-goss-spec.yaml to current dir
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: _______________________  _______   _____________  ___________________ ________
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: __  ___/___  ____/__  / / /___  | / /__  ____/_ \/ /___  ____/__  __ \___  __ \
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: _____ \ __  __/   _  / / / __   |/ / _  / __  __  / __  __/   _  / / /__  /_/ /
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ____/ / _  /___   / /_/ /  _  /|  /  / /_/ /  _  /  _  /___   / /_/ / _  ____/
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: /____/  /_____/   \____/   /_/ |_/   \____/   /_/   /_____/   \____/  /_/
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating VPC service...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: VPC service creation successful!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Rebooting instance to cleanly complete any installed software components...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance is ACTIVE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Stopping instance ID: 0757_af036ae0-998b-429a-9b64-46ad746e3e13 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance successfully stopped!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating an Image from instance ID: 0757_af036ae0-998b-429a-9b64-46ad746e3e13 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Image Successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Image's Name: ubuntu-focal-docker-0-1-0-1140
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Image's ID: r014-4bc05992-7645-4761-8a91-25b2d458ff55
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting for the Image to become AVAILABLE...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [5m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [5m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 1 minutes
null_resource.run_packer: Still creating... [5m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [5m30s elapsed]
null_resource.run_packer: Still creating... [5m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [5m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [6m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [6m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [6m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 2 minutes
null_resource.run_packer: Still creating... [6m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [6m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [6m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [7m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [7m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [7m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 3 minutes
null_resource.run_packer: Still creating... [7m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [7m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [7m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [8m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [8m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [8m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 4 minutes
null_resource.run_packer: Still creating... [8m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [8m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [8m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [9m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [9m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [9m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 5 minutes
null_resource.run_packer: Still creating... [9m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [9m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [9m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [10m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [10m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [10m21s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 6 minutes
null_resource.run_packer: Still creating... [10m31s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Image is now AVAILABLE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ****************************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: * Cleaning Up all temporary infrastructure created during packer execution *
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ****************************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Releasing the Floating IP: 52.116.125.117 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: The Floating IP was successfully released!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Deleting Instance ID: 0757_af036ae0-998b-429a-9b64-46ad746e3e13 ...
null_resource.run_packer: Still creating... [10m41s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: The instance was successfully deleted!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Deleting Security Group's rule r014-24b89805-9920-4678-b074-e6c250ef2ed1 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: The Security Group's rule was successfully deleted!
null_resource.run_packer: Still creating... [10m51s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Deleting Security Group packer-vpc-security-group-0509 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: The Security Group was successfully deleted!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Deleting SSH key for VPC packer-vpc-ssh-key-0509 ...
null_resource.run_packer: Still creating... [11m1s elapsed]
null_resource.run_packer: Still creating... [11m11s elapsed]
null_resource.run_packer: Still creating... [11m21s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: The Key was successfully deleted!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Deleting Public and Private SSH Key Pair...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Public and Private SSH Key Pair successfully deleted.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ********************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: * Thank you for using IBM Cloud Packer Plugin - VPC Infrastructure *
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ********************************************************************
null_resource.run_packer (local-exec): Build 'ibmcloud-vpc.ubuntu-focal' finished after 11 minutes 22 seconds.

null_resource.run_packer (local-exec): ==> Wait completed after 11 minutes 22 seconds

null_resource.run_packer (local-exec): ==> Builds finished. The artifacts of successful builds are:
null_resource.run_packer (local-exec): --> ibmcloud-vpc.ubuntu-focal: Image Name: ubuntu-focal-docker-0-1-0-1140 || Image ID: r014-4bc05992-7645-4761-8a91-25b2d458ff55
null_resource.run_packer: Creation complete after 11m28s [id=3365349023672114632]
data.ibm_is_image.ubuntu-20-04-3-docker: Reading...
data.ibm_is_image.ubuntu-20-04-3-docker: Read complete after 1s [id=r014-4bc05992-7645-4761-8a91-25b2d458ff55]
ibm_is_instance.one_from_the_image: Creating...
ibm_is_instance.one_from_the_image: Still creating... [10s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [20s elapsed]
ibm_is_instance.one_from_the_image: Creation complete after 24s [id=0757_615bc76b-f628-4679-87d8-d2b31513c936]
ibm_is_floating_ip.one_from_the_image: Creating...
ibm_is_floating_ip.one_from_the_image: Still creating... [10s elapsed]
ibm_is_floating_ip.one_from_the_image: Creation complete after 12s [id=r014-bd9803f1-a878-463e-a997-79ee7c80115b]
null_resource.ssh_one_from_the_image: Creating...
local_file.temp_private_key_to_one_from_the_image: Creating...
null_resource.ssh_one_from_the_image: Provisioning with 'remote-exec'...
null_resource.ssh_one_from_the_image (remote-exec): Connecting to remote host via SSH...
null_resource.ssh_one_from_the_image (remote-exec):   Host: 169.63.100.111
null_resource.ssh_one_from_the_image (remote-exec):   User: ubuntu
null_resource.ssh_one_from_the_image (remote-exec):   Password: false
null_resource.ssh_one_from_the_image (remote-exec):   Private key: true
null_resource.ssh_one_from_the_image (remote-exec):   Certificate: false
null_resource.ssh_one_from_the_image (remote-exec):   SSH Agent: false
null_resource.ssh_one_from_the_image (remote-exec):   Checking Host Key: false
null_resource.ssh_one_from_the_image (remote-exec):   Target Platform: unix
local_file.temp_private_key_to_one_from_the_image: Creation complete after 0s [id=ec638fb671894eb3f656abbca06707354d5f3341]
null_resource.ssh_one_from_the_image (remote-exec): Connected!
null_resource.ssh_one_from_the_image (remote-exec): Linux prefix-us-east-1140-in-from-the-image 5.15.0-1002-ibm #2-Ubuntu SMP Fri Apr 1 10:12:00 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux
null_resource.ssh_one_from_the_image (remote-exec): docker: /usr/bin/docker /etc/docker /usr/libexec/docker /usr/share/man/man1/docker.1.gz
null_resource.ssh_one_from_the_image: Creation complete after 3s [id=8504693290632831946]

Apply complete! Resources: 13 added, 0 changed, 0 destroyed.

Outputs:

baked_image = {
  "architecture" = "amd64"
  "checksum" = "efa4b100af48e3bcbc03246639e503038c429f9a86174c0ac82360ff62ca11fc"
  "crn" = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::image:r014-4bc05992-7645-4761-8a91-25b2d458ff55"
  "encryption" = "none"
  "encryption_key" = tostring(null)
  "id" = "r014-4bc05992-7645-4761-8a91-25b2d458ff55"
  "identifier" = tostring(null)
  "name" = "ubuntu-focal-docker-0-1-0-1140"
  "os" = "ubuntu-22-04-amd64"
  "source_volume" = "r014-ff340614-4fcc-4422-8ee8-fdcc583e0d03"
  "status" = "available"
  "visibility" = "private"
}
ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$

ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$ ssh -i prv_key ubuntu@169.63.100.111
Warning: Permanently added '169.63.100.111' (ED25519) to the list of known hosts.
Welcome to Ubuntu 22.04 LTS (GNU/Linux 5.15.0-1002-ibm x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Tue Jul 26 01:03:42 UTC 2022

  System load:  0.2333984375      Processes:                110
  Usage of /:   2.5% of 96.75GB   Users logged in:          0
  Memory usage: 6%                IPv4 address for docker0: 172.17.0.1
  Swap usage:   0%                IPv4 address for ens3:    10.241.0.5


71 updates can be applied immediately.
49 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable


Last login: Tue Jul 26 01:02:12 2022 from 52.116.128.28
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ubuntu@prefix-us-east-1140-in-from-the-image:~$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 22.04 LTS
Release:        22.04
Codename:       jammy
ubuntu@prefix-us-east-1140-in-from-the-image:~$ exit
logout
Connection to 169.63.100.111 closed.
ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$

ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$ ./prod_test_delete.sh
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.38.6
random_id.this: Refreshing state... [id=EUA]
tls_private_key.insecure: Refreshing state... [id=bf8fccf13df7c0bf4b196e28791f009d18352ed1]
data.ibm_resource_group.this: Reading...
data.ibm_is_image.ubuntu: Reading...
data.ibm_is_zones.this: Reading...
ibm_is_ssh_key.this: Refreshing state... [id=r014-f428cf49-c9da-4c9e-9e1f-9c0a5aaf1964]
data.ibm_is_zones.this: Read complete after 0s [id=2022-07-26 01:04:30.032679998 +0000 UTC]
data.ibm_resource_group.this: Read complete after 0s [id=2885830dd63945e9b3c4e40a3d51cb5e]
ibm_is_vpc.this: Refreshing state... [id=r014-60efee98-88ab-4e88-831a-aa1218bc2fe3]
data.ibm_is_image.ubuntu: Read complete after 0s [id=r014-0acbdcb5-a68f-4a52-98ea-4da4fe89bacb]
ibm_is_security_group_rule.ssh: Refreshing state... [id=r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-28a7eaec-8c50-44df-a78e-239a391a5be2]
ibm_is_security_group_rule.icmp: Refreshing state... [id=r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-aa6aee21-4bbe-4b08-8659-a9d63bb21a08]
ibm_is_subnet.this: Refreshing state... [id=0757-90cc5bcc-020c-40e9-b8df-b743c544af2e]
ibm_is_security_group_rule.http: Refreshing state... [id=r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-45b65dd1-22bf-486c-89bd-7f83c1ceb172]
null_resource.run_packer: Refreshing state... [id=3365349023672114632]
data.ibm_is_image.ubuntu-20-04-3-docker: Reading...
data.ibm_is_image.ubuntu-20-04-3-docker: Read complete after 0s [id=r014-4bc05992-7645-4761-8a91-25b2d458ff55]
ibm_is_instance.one_from_the_image: Refreshing state... [id=0757_615bc76b-f628-4679-87d8-d2b31513c936]
ibm_is_floating_ip.one_from_the_image: Refreshing state... [id=r014-bd9803f1-a878-463e-a997-79ee7c80115b]
null_resource.ssh_one_from_the_image: Refreshing state... [id=8504693290632831946]
local_file.temp_private_key_to_one_from_the_image: Refreshing state... [id=ec638fb671894eb3f656abbca06707354d5f3341]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # ibm_is_floating_ip.one_from_the_image will be destroyed
  - resource "ibm_is_floating_ip" "one_from_the_image" {
      - address                 = "169.63.100.111" -> null
      - crn                     = "crn:v1:bluemix:public:is:us-east-1:a/c560c8e42d2f49a48210811bd6f5ee73::floating-ip:r014-bd9803f1-a878-463e-a997-79ee7c80115b" -> null
      - id                      = "r014-bd9803f1-a878-463e-a997-79ee7c80115b" -> null
      - name                    = "prefix-us-east-1140-ip-from-the-image" -> null
      - resource_controller_url = "https://cloud.ibm.com/vpc-ext/network/floatingIPs" -> null
      - resource_crn            = "crn:v1:bluemix:public:is:us-east-1:a/c560c8e42d2f49a48210811bd6f5ee73::floating-ip:r014-bd9803f1-a878-463e-a997-79ee7c80115b" -> null
      - resource_group          = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name     = "Default" -> null
      - resource_name           = "prefix-us-east-1140-ip-from-the-image" -> null
      - resource_status         = "available" -> null
      - status                  = "available" -> null
      - tags                    = [] -> null
      - target                  = "0757-a73871c1-dee6-40a5-a3c4-1a995b5b5b6d" -> null
      - target_list             = [
          - {
              - crn           = ""
              - deleted       = []
              - href          = "https://us-east.iaas.cloud.ibm.com/v1/instances/0757_615bc76b-f628-4679-87d8-d2b31513c936/network_interfaces/0757-a73871c1-dee6-40a5-a3c4-1a995b5b5b6d"
              - id            = "0757-a73871c1-dee6-40a5-a3c4-1a995b5b5b6d"
              - name          = "cheek-untrained-purse-nullify"
              - primary_ip    = [
                  - {
                      - address       = "10.241.0.5"
                      - href          = "https://us-east.iaas.cloud.ibm.com/v1/subnets/0757-90cc5bcc-020c-40e9-b8df-b743c544af2e/reserved_ips/0757-50234bf8-adb4-422c-b925-6f8593739ad3"
                      - name          = "washstand-sensation-habitude-cupped"
                      - reserved_ip   = "0757-50234bf8-adb4-422c-b925-6f8593739ad3"
                      - resource_type = "subnet_reserved_ip"
                    },
                ]
              - resource_type = "network_interface"
            },
        ] -> null
      - zone                    = "us-east-1" -> null
    }

  # ibm_is_instance.one_from_the_image will be destroyed
  - resource "ibm_is_instance" "one_from_the_image" {
      - availability_policy_host_failure = "restart" -> null
      - bandwidth                        = 4000 -> null
      - crn                              = "crn:v1:bluemix:public:is:us-east-1:a/c560c8e42d2f49a48210811bd6f5ee73::instance:0757_615bc76b-f628-4679-87d8-d2b31513c936" -> null
      - disks                            = [] -> null
      - force_action                     = false -> null
      - gpu                              = [] -> null
      - id                               = "0757_615bc76b-f628-4679-87d8-d2b31513c936" -> null
      - image                            = "r014-4bc05992-7645-4761-8a91-25b2d458ff55" -> null
      - keys                             = [
          - "r014-f428cf49-c9da-4c9e-9e1f-9c0a5aaf1964",
        ] -> null
      - memory                           = 4 -> null
      - metadata_service_enabled         = false -> null
      - name                             = "prefix-us-east-1140-in-from-the-image" -> null
      - placement_target                 = [] -> null
      - profile                          = "cx2-2x4" -> null
      - resource_controller_url          = "https://cloud.ibm.com/vpc-ext/compute/vs" -> null
      - resource_crn                     = "crn:v1:bluemix:public:is:us-east-1:a/c560c8e42d2f49a48210811bd6f5ee73::instance:0757_615bc76b-f628-4679-87d8-d2b31513c936" -> null
      - resource_group                   = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name              = "Default" -> null
      - resource_name                    = "prefix-us-east-1140-in-from-the-image" -> null
      - resource_status                  = "running" -> null
      - status                           = "running" -> null
      - status_reasons                   = [] -> null
      - tags                             = [] -> null
      - total_network_bandwidth          = 3000 -> null
      - total_volume_bandwidth           = 1000 -> null
      - vcpu                             = [
          - {
              - architecture = "amd64"
              - count        = 2
            },
        ] -> null
      - volume_attachments               = [
          - {
              - id          = "0757-e9aa0360-1a51-4b45-b9c5-109e2bab58d4"
              - name        = "handed-jackal-reboot-output"
              - volume_crn  = "crn:v1:bluemix:public:is:us-east-1:a/c560c8e42d2f49a48210811bd6f5ee73::volume:r014-4ed6d751-dc91-497a-820e-9ca3a97dd691"
              - volume_id   = "r014-4ed6d751-dc91-497a-820e-9ca3a97dd691"
              - volume_name = "showplace-trustless-fidelity-bunkbed"
            },
        ] -> null
      - vpc                              = "r014-60efee98-88ab-4e88-831a-aa1218bc2fe3" -> null
      - wait_before_delete               = true -> null
      - zone                             = "us-east-1" -> null

      - boot_volume {
          - iops      = 3000 -> null
          - name      = "showplace-trustless-fidelity-bunkbed" -> null
          - profile   = "general-purpose" -> null
          - size      = 100 -> null
          - volume_id = "r014-4ed6d751-dc91-497a-820e-9ca3a97dd691" -> null
        }

      - primary_network_interface {
          - allow_ip_spoofing    = false -> null
          - id                   = "0757-a73871c1-dee6-40a5-a3c4-1a995b5b5b6d" -> null
          - name                 = "cheek-untrained-purse-nullify" -> null
          - port_speed           = 3000 -> null
          - primary_ipv4_address = "10.241.0.5" -> null
          - security_groups      = [
              - "r014-0aef49e7-6933-415a-ab97-215f03f89d55",
            ] -> null
          - subnet               = "0757-90cc5bcc-020c-40e9-b8df-b743c544af2e" -> null

          - primary_ip {
              - address       = "10.241.0.5" -> null
              - auto_delete   = true -> null
              - href          = "https://us-east.iaas.cloud.ibm.com/v1/subnets/0757-90cc5bcc-020c-40e9-b8df-b743c544af2e/reserved_ips/0757-50234bf8-adb4-422c-b925-6f8593739ad3" -> null
              - name          = "washstand-sensation-habitude-cupped" -> null
              - reserved_ip   = "0757-50234bf8-adb4-422c-b925-6f8593739ad3" -> null
              - resource_type = "subnet_reserved_ip" -> null
            }
        }
    }

  # ibm_is_security_group_rule.http will be destroyed
  - resource "ibm_is_security_group_rule" "http" {
      - direction   = "inbound" -> null
      - group       = "r014-0aef49e7-6933-415a-ab97-215f03f89d55" -> null
      - id          = "r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-45b65dd1-22bf-486c-89bd-7f83c1ceb172" -> null
      - ip_version  = "ipv4" -> null
      - protocol    = "tcp" -> null
      - related_crn = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r014-0aef49e7-6933-415a-ab97-215f03f89d55" -> null
      - remote      = "0.0.0.0/0" -> null
      - rule_id     = "r014-45b65dd1-22bf-486c-89bd-7f83c1ceb172" -> null

      - tcp {
          - port_max = 80 -> null
          - port_min = 80 -> null
        }
    }

  # ibm_is_security_group_rule.icmp will be destroyed
  - resource "ibm_is_security_group_rule" "icmp" {
      - direction   = "inbound" -> null
      - group       = "r014-0aef49e7-6933-415a-ab97-215f03f89d55" -> null
      - id          = "r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-aa6aee21-4bbe-4b08-8659-a9d63bb21a08" -> null
      - ip_version  = "ipv4" -> null
      - protocol    = "icmp" -> null
      - related_crn = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r014-0aef49e7-6933-415a-ab97-215f03f89d55" -> null
      - remote      = "0.0.0.0/0" -> null
      - rule_id     = "r014-aa6aee21-4bbe-4b08-8659-a9d63bb21a08" -> null

      - icmp {
          - code = 0 -> null
          - type = 8 -> null
        }
    }

  # ibm_is_security_group_rule.ssh will be destroyed
  - resource "ibm_is_security_group_rule" "ssh" {
      - direction   = "inbound" -> null
      - group       = "r014-0aef49e7-6933-415a-ab97-215f03f89d55" -> null
      - id          = "r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-28a7eaec-8c50-44df-a78e-239a391a5be2" -> null
      - ip_version  = "ipv4" -> null
      - protocol    = "tcp" -> null
      - related_crn = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r014-0aef49e7-6933-415a-ab97-215f03f89d55" -> null
      - remote      = "0.0.0.0/0" -> null
      - rule_id     = "r014-28a7eaec-8c50-44df-a78e-239a391a5be2" -> null

      - tcp {
          - port_max = 22 -> null
          - port_min = 22 -> null
        }
    }

  # ibm_is_ssh_key.this will be destroyed
  - resource "ibm_is_ssh_key" "this" {
      - crn                     = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::key:r014-f428cf49-c9da-4c9e-9e1f-9c0a5aaf1964" -> null
      - fingerprint             = "SHA256:OLhxzAuMT/6712TVP+nnK01XaSj86+ELNcwuj1KcWHo" -> null
      - id                      = "r014-f428cf49-c9da-4c9e-9e1f-9c0a5aaf1964" -> null
      - length                  = 4096 -> null
      - name                    = "prefix-us-east-1140-ssh-key" -> null
      - public_key              = (sensitive) -> null
      - resource_controller_url = "https://cloud.ibm.com/vpc-ext/compute/sshKeys" -> null
      - resource_crn            = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::key:r014-f428cf49-c9da-4c9e-9e1f-9c0a5aaf1964" -> null
      - resource_group          = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name     = "Default" -> null
      - resource_name           = "prefix-us-east-1140-ssh-key" -> null
      - tags                    = [] -> null
      - type                    = "rsa" -> null
    }

  # ibm_is_subnet.this will be destroyed
  - resource "ibm_is_subnet" "this" {
      - access_tags                  = [] -> null
      - available_ipv4_address_count = 250 -> null
      - crn                          = "crn:v1:bluemix:public:is:us-east-1:a/c560c8e42d2f49a48210811bd6f5ee73::subnet:0757-90cc5bcc-020c-40e9-b8df-b743c544af2e" -> null
      - id                           = "0757-90cc5bcc-020c-40e9-b8df-b743c544af2e" -> null
      - ip_version                   = "ipv4" -> null
      - ipv4_cidr_block              = "10.241.0.0/24" -> null
      - name                         = "prefix-us-east-1140-subnet" -> null
      - network_acl                  = "r014-2b93f385-0a46-4ccc-a37c-8439691ee8df" -> null
      - resource_controller_url      = "https://cloud.ibm.com/vpc-ext/network/subnets" -> null
      - resource_crn                 = "crn:v1:bluemix:public:is:us-east-1:a/c560c8e42d2f49a48210811bd6f5ee73::subnet:0757-90cc5bcc-020c-40e9-b8df-b743c544af2e" -> null
      - resource_group               = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name          = "Default" -> null
      - resource_name                = "prefix-us-east-1140-subnet" -> null
      - resource_status              = "available" -> null
      - routing_table                = "r014-fec44174-64b4-419a-b1da-e152415cc3ef" -> null
      - status                       = "available" -> null
      - tags                         = [] -> null
      - total_ipv4_address_count     = 256 -> null
      - vpc                          = "r014-60efee98-88ab-4e88-831a-aa1218bc2fe3" -> null
      - zone                         = "us-east-1" -> null
    }

  # ibm_is_vpc.this will be destroyed
  - resource "ibm_is_vpc" "this" {
      - address_prefix_management   = "auto" -> null
      - classic_access              = false -> null
      - crn                         = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::vpc:r014-60efee98-88ab-4e88-831a-aa1218bc2fe3" -> null
      - cse_source_addresses        = [
          - {
              - address   = "10.249.89.237"
              - zone_name = "us-east-1"
            },
          - {
              - address   = "10.249.92.131"
              - zone_name = "us-east-2"
            },
          - {
              - address   = "10.249.96.114"
              - zone_name = "us-east-3"
            },
        ] -> null
      - default_network_acl         = "r014-2b93f385-0a46-4ccc-a37c-8439691ee8df" -> null
      - default_network_acl_crn     = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::network-acl:r014-2b93f385-0a46-4ccc-a37c-8439691ee8df" -> null
      - default_network_acl_name    = "favoring-bagginess-kithe-legacy" -> null
      - default_routing_table       = "r014-fec44174-64b4-419a-b1da-e152415cc3ef" -> null
      - default_routing_table_name  = "ceremony-unabashed-lather-splatter" -> null
      - default_security_group      = "r014-0aef49e7-6933-415a-ab97-215f03f89d55" -> null
      - default_security_group_crn  = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r014-0aef49e7-6933-415a-ab97-215f03f89d55" -> null
      - default_security_group_name = "prudent-anthill-penholder-cordovan" -> null
      - id                          = "r014-60efee98-88ab-4e88-831a-aa1218bc2fe3" -> null
      - name                        = "prefix-us-east-1140-vpc" -> null
      - resource_controller_url     = "https://cloud.ibm.com/vpc-ext/network/vpcs" -> null
      - resource_crn                = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::vpc:r014-60efee98-88ab-4e88-831a-aa1218bc2fe3" -> null
      - resource_group              = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name         = "Default" -> null
      - resource_name               = "prefix-us-east-1140-vpc" -> null
      - resource_status             = "available" -> null
      - security_group              = [
          - {
              - group_id   = "r014-0aef49e7-6933-415a-ab97-215f03f89d55"
              - group_name = "prudent-anthill-penholder-cordovan"
              - rules      = [
                  - {
                      - code       = 0
                      - direction  = "outbound"
                      - ip_version = "ipv4"
                      - port_max   = 0
                      - port_min   = 0
                      - protocol   = "all"
                      - remote     = "0.0.0.0/0"
                      - rule_id    = "r014-b7b4ad25-f9b1-41bc-8097-d5b1b0decafc"
                      - type       = 0
                    },
                  - {
                      - code       = 0
                      - direction  = "inbound"
                      - ip_version = "ipv4"
                      - port_max   = 0
                      - port_min   = 0
                      - protocol   = "all"
                      - remote     = "r014-0aef49e7-6933-415a-ab97-215f03f89d55"
                      - rule_id    = "r014-2d7b4fc6-016f-47b8-97c3-59170e2ff775"
                      - type       = 0
                    },
                  - {
                      - code       = 0
                      - direction  = "inbound"
                      - ip_version = "ipv4"
                      - port_max   = 22
                      - port_min   = 22
                      - protocol   = "tcp"
                      - remote     = "0.0.0.0/0"
                      - rule_id    = "r014-28a7eaec-8c50-44df-a78e-239a391a5be2"
                      - type       = 0
                    },
                  - {
                      - code       = 0
                      - direction  = "inbound"
                      - ip_version = "ipv4"
                      - port_max   = 80
                      - port_min   = 80
                      - protocol   = "tcp"
                      - remote     = "0.0.0.0/0"
                      - rule_id    = "r014-45b65dd1-22bf-486c-89bd-7f83c1ceb172"
                      - type       = 0
                    },
                  - {
                      - code       = 0
                      - direction  = "inbound"
                      - ip_version = "ipv4"
                      - port_max   = 0
                      - port_min   = 0
                      - protocol   = "icmp"
                      - remote     = "0.0.0.0/0"
                      - rule_id    = "r014-aa6aee21-4bbe-4b08-8659-a9d63bb21a08"
                      - type       = 8
                    },
                ]
            },
        ] -> null
      - status                      = "available" -> null
      - subnets                     = [
          - {
              - available_ipv4_address_count = 250
              - id                           = "0757-90cc5bcc-020c-40e9-b8df-b743c544af2e"
              - name                         = "prefix-us-east-1140-subnet"
              - status                       = "available"
              - total_ipv4_address_count     = 256
              - zone                         = "us-east-1"
            },
        ] -> null
      - tags                        = [] -> null
    }

  # local_file.temp_private_key_to_one_from_the_image will be destroyed
  - resource "local_file" "temp_private_key_to_one_from_the_image" {
      - content              = (sensitive) -> null
      - directory_permission = "0777" -> null
      - file_permission      = "0600" -> null
      - filename             = "prv_key" -> null
      - id                   = "ec638fb671894eb3f656abbca06707354d5f3341" -> null
    }

  # null_resource.run_packer will be destroyed
  - resource "null_resource" "run_packer" {
      - id       = "3365349023672114632" -> null
      - triggers = {
          - "when_version_changed" = "ubuntu-focal-docker-0-1-0-1140"
        } -> null
    }

  # null_resource.ssh_one_from_the_image will be destroyed
  - resource "null_resource" "ssh_one_from_the_image" {
      - id       = "8504693290632831946" -> null
      - triggers = {
          - "fip_instance_id" = "0757_615bc76b-f628-4679-87d8-d2b31513c936"
        } -> null
    }

  # random_id.this will be destroyed
  - resource "random_id" "this" {
      - b64_std     = "EUA=" -> null
      - b64_url     = "EUA" -> null
      - byte_length = 2 -> null
      - dec         = "4416" -> null
      - hex         = "1140" -> null
      - id          = "EUA" -> null
    }

  # tls_private_key.insecure will be destroyed
  - resource "tls_private_key" "insecure" {
      - algorithm                     = "RSA" -> null
      - ecdsa_curve                   = "P224" -> null
      - id                            = "bf8fccf13df7c0bf4b196e28791f009d18352ed1" -> null
      - private_key_openssh           = (sensitive value)
      - private_key_pem               = (sensitive value)
      - private_key_pem_pkcs8         = (sensitive value)
      - public_key_fingerprint_md5    = "3f:10:d8:72:09:79:81:f2:3c:ab:5e:bd:0c:ff:b2:37" -> null
      - public_key_fingerprint_sha256 = "SHA256:OLhxzAuMT/6712TVP+nnK01XaSj86+ELNcwuj1KcWHo" -> null
      - public_key_openssh            = <<-EOT
            ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDgBu0mVSRKcvLnbEMasCRpj4AFRH/1pc8QIsql5QIcxIWrm7hs59evmx31+h6ucv2UOyGpipBj1TWCaCmWFqefsUQn2fSgpff/EUYvo+U0V4rvmdWHxMmN9yd7L43PClQYZTH5oloqJGlMuU0NSHc3Iz0HIV+vhfvGyeLqDQvNCarsqva9CRNhZVFOs8Sy9Km6WwS7R6dS0rqxBxvqEcpb4F6+Tf0FMObUtlqJvrktA17qz8ITPU5JmrDAjlOCWd54psdaKRdRbkUoDhB5Pd8sUy+qr3UVaK7zhV1VYqL2TRHEJ4EEL57BL6oWUyIDF/OpzgL1UFF22KA2tJDop+WkDTEF4avP1hDvsuIIvg4q7ijXnzQ0ExOmF3+s7SmgJM4cICj8fWHVBFoIsY9QRT5lMkqAmysxrDEEdozHLwAL9/14IGESAYLrIqWuiQpNuAPGzch70Dpp/z4kTg97TRCk7MhxU5zoeVW1EJpIPR4/NrZwWmt3L0A81/VtK9U8h7HQESzqs6BGkZONMq/zKliMYC9U0ywm119vw+5bYzvCf/rBDUE6BDcYhoSplBux8qpD3T4FBUlROhlEsIZr1XFF1/pgjWtayip1etQS+qBXgCL+XVnw+9JhdcG2XaEP501e2okYbJIbofWqvJVPF4ThxpbIflUOSGrfXOkR783jfw==
        EOT -> null
      - public_key_pem                = <<-EOT
            -----BEGIN PUBLIC KEY-----
            MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA4AbtJlUkSnLy52xDGrAk
            aY+ABUR/9aXPECLKpeUCHMSFq5u4bOfXr5sd9foernL9lDshqYqQY9U1gmgplhan
            n7FEJ9n0oKX3/xFGL6PlNFeK75nVh8TJjfcney+NzwpUGGUx+aJaKiRpTLlNDUh3
            NyM9ByFfr4X7xsni6g0LzQmq7Kr2vQkTYWVRTrPEsvSpulsEu0enUtK6sQcb6hHK
            W+Bevk39BTDm1LZaib65LQNe6s/CEz1OSZqwwI5TglneeKbHWikXUW5FKA4QeT3f
            LFMvqq91FWiu84VdVWKi9k0RxCeBBC+ewS+qFlMiAxfzqc4C9VBRdtigNrSQ6Kfl
            pA0xBeGrz9YQ77LiCL4OKu4o1580NBMTphd/rO0poCTOHCAo/H1h1QRaCLGPUEU+
            ZTJKgJsrMawxBHaMxy8AC/f9eCBhEgGC6yKlrokKTbgDxs3Ie9A6af8+JE4Pe00Q
            pOzIcVOc6HlVtRCaSD0ePza2cFprdy9APNf1bSvVPIex0BEs6rOgRpGTjTKv8ypY
            jGAvVNMsJtdfb8PuW2M7wn/6wQ1BOgQ3GIaEqZQbsfKqQ90+BQVJUToZRLCGa9Vx
            Rdf6YI1rWsoqdXrUEvqgV4Ai/l1Z8PvSYXXBtl2hD+dNXtqJGGySG6H1qryVTxeE
            4caWyH5VDkhq31zpEe/N438CAwEAAQ==
            -----END PUBLIC KEY-----
        EOT -> null
      - rsa_bits                      = 4096 -> null
    }

Plan: 0 to add, 0 to change, 13 to destroy.

Changes to Outputs:
  - baked_image = {
      - architecture   = "amd64"
      - checksum       = "efa4b100af48e3bcbc03246639e503038c429f9a86174c0ac82360ff62ca11fc"
      - crn            = "crn:v1:bluemix:public:is:us-east:a/c560c8e42d2f49a48210811bd6f5ee73::image:r014-4bc05992-7645-4761-8a91-25b2d458ff55"
      - encryption     = "none"
      - encryption_key = null
      - id             = "r014-4bc05992-7645-4761-8a91-25b2d458ff55"
      - identifier     = null
      - name           = "ubuntu-focal-docker-0-1-0-1140"
      - os             = "ubuntu-22-04-amd64"
      - source_volume  = "r014-ff340614-4fcc-4422-8ee8-fdcc583e0d03"
      - status         = "available"
      - visibility     = "private"
    } -> null
local_file.temp_private_key_to_one_from_the_image: Destroying... [id=ec638fb671894eb3f656abbca06707354d5f3341]
local_file.temp_private_key_to_one_from_the_image: Destruction complete after 0s
null_resource.ssh_one_from_the_image: Destroying... [id=8504693290632831946]
null_resource.ssh_one_from_the_image: Destruction complete after 0s
ibm_is_security_group_rule.icmp: Destroying... [id=r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-aa6aee21-4bbe-4b08-8659-a9d63bb21a08]
ibm_is_security_group_rule.http: Destroying... [id=r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-45b65dd1-22bf-486c-89bd-7f83c1ceb172]
ibm_is_floating_ip.one_from_the_image: Destroying... [id=r014-bd9803f1-a878-463e-a997-79ee7c80115b]
ibm_is_security_group_rule.icmp: Destruction complete after 1s
ibm_is_security_group_rule.http: Destruction complete after 2s
ibm_is_floating_ip.one_from_the_image: Still destroying... [id=r014-bd9803f1-a878-463e-a997-79ee7c80115b, 10s elapsed]
ibm_is_floating_ip.one_from_the_image: Destruction complete after 12s
ibm_is_instance.one_from_the_image: Destroying... [id=0757_615bc76b-f628-4679-87d8-d2b31513c936]
ibm_is_instance.one_from_the_image: Still destroying... [id=0757_615bc76b-f628-4679-87d8-d2b31513c936, 10s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0757_615bc76b-f628-4679-87d8-d2b31513c936, 20s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0757_615bc76b-f628-4679-87d8-d2b31513c936, 30s elapsed]
ibm_is_instance.one_from_the_image: Destruction complete after 32s
ibm_is_ssh_key.this: Destroying... [id=r014-f428cf49-c9da-4c9e-9e1f-9c0a5aaf1964]
null_resource.run_packer: Destroying... [id=3365349023672114632]
ibm_is_security_group_rule.ssh: Destroying... [id=r014-0aef49e7-6933-415a-ab97-215f03f89d55.r014-28a7eaec-8c50-44df-a78e-239a391a5be2]
null_resource.run_packer: Destruction complete after 0s
ibm_is_subnet.this: Destroying... [id=0757-90cc5bcc-020c-40e9-b8df-b743c544af2e]
ibm_is_security_group_rule.ssh: Destruction complete after 0s
ibm_is_ssh_key.this: Destruction complete after 1s
tls_private_key.insecure: Destroying... [id=bf8fccf13df7c0bf4b196e28791f009d18352ed1]
tls_private_key.insecure: Destruction complete after 0s
ibm_is_subnet.this: Still destroying... [id=0757-90cc5bcc-020c-40e9-b8df-b743c544af2e, 10s elapsed]
ibm_is_subnet.this: Destruction complete after 11s
ibm_is_vpc.this: Destroying... [id=r014-60efee98-88ab-4e88-831a-aa1218bc2fe3]
ibm_is_vpc.this: Still destroying... [id=r014-60efee98-88ab-4e88-831a-aa1218bc2fe3, 10s elapsed]
ibm_is_vpc.this: Destruction complete after 10s
random_id.this: Destroying... [id=EUA]
random_id.this: Destruction complete after 0s

Destroy complete! Resources: 13 destroyed.
ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$
```
