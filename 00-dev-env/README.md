```
ubuntu@9ca9d3e1b155:/iaas-tfp$ cd 00-dev-env/
ubuntu@9ca9d3e1b155:/iaas-tfp/00-dev-env$ ./prod_test.sh
us-south
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.37.1
Created and switched to workspace "us-south"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
us-south
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.37.1
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.37.1

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/tls from the dependency lock file
- Reusing previous version of ibm-cloud/ibm from the dependency lock file
- Reusing previous version of hashicorp/null from the dependency lock file
- Reusing previous version of hashicorp/local from the dependency lock file
- Reusing previous version of hashicorp/random from the dependency lock file
- Using previously-installed hashicorp/random v3.1.0
- Using previously-installed hashicorp/tls v3.1.0
- Using previously-installed ibm-cloud/ibm v1.38.0
- Using previously-installed hashicorp/null v3.1.0
- Using previously-installed hashicorp/local v2.2.2

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.37.1
data.ibm_resource_group.this: Reading...
data.ibm_is_image.ubuntu-20-04-3: Reading...
data.ibm_is_zones.this: Reading...
data.ibm_is_zones.this: Read complete after 1s [id=2022-06-09 03:58:48.606941125 +0000 UTC]
data.ibm_resource_group.this: Read complete after 1s [id=2885830dd63945e9b3c4e40a3d51cb5e]
data.ibm_is_image.ubuntu-20-04-3: Read complete after 2s [id=r006-2ab9b47b-b13e-4d68-ae91-98124d7fc217]

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
      + zone                    = (known after apply)
    }

  # ibm_is_instance.one_from_the_image will be created
  + resource "ibm_is_instance" "one_from_the_image" {
      + bandwidth               = (known after apply)
      + crn                     = (known after apply)
      + disks                   = (known after apply)
      + force_action            = false
      + gpu                     = (known after apply)
      + id                      = (known after apply)
      + image                   = (known after apply)
      + keys                    = (known after apply)
      + memory                  = (known after apply)
      + name                    = (known after apply)
      + placement_target        = (known after apply)
      + profile                 = "cx2-2x4"
      + resource_controller_url = (known after apply)
      + resource_crn            = (known after apply)
      + resource_group          = (known after apply)
      + resource_group_name     = (known after apply)
      + resource_name           = (known after apply)
      + resource_status         = (known after apply)
      + status                  = (known after apply)
      + status_reasons          = (known after apply)
      + tags                    = (known after apply)
      + total_network_bandwidth = (known after apply)
      + total_volume_bandwidth  = (known after apply)
      + vcpu                    = (known after apply)
      + volume_attachments      = (known after apply)
      + vpc                     = (known after apply)
      + wait_before_delete      = true
      + zone                    = "us-south-1"

      + boot_volume {
          + encryption = (known after apply)
          + iops       = (known after apply)
          + name       = (known after apply)
          + profile    = (known after apply)
          + size       = (known after apply)
          + snapshot   = (known after apply)
        }

      + network_interfaces {
          + allow_ip_spoofing    = (known after apply)
          + id                   = (known after apply)
          + name                 = (known after apply)
          + primary_ipv4_address = (known after apply)
          + security_groups      = (known after apply)
          + subnet               = (known after apply)
        }

      + primary_network_interface {
          + allow_ip_spoofing    = false
          + id                   = (known after apply)
          + name                 = (known after apply)
          + primary_ipv4_address = (known after apply)
          + security_groups      = (known after apply)
          + subnet               = (known after apply)
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
      + zone                         = "us-south-1"
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
      + algorithm                  = "RSA"
      + ecdsa_curve                = "P224"
      + id                         = (known after apply)
      + private_key_pem            = (sensitive value)
      + public_key_fingerprint_md5 = (known after apply)
      + public_key_openssh         = (known after apply)
      + public_key_pem             = (known after apply)
      + rsa_bits                   = 4096
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
tls_private_key.insecure: Creating...
random_id.this: Creating...
random_id.this: Creation complete after 0s [id=m4s]
ibm_is_vpc.this: Creating...
tls_private_key.insecure: Creation complete after 5s [id=16c5024479277faa78dbddedfe7e7a0bfdbcbbe1]
ibm_is_ssh_key.this: Creating...
ibm_is_ssh_key.this: Creation complete after 1s [id=r006-0309d3f9-b82a-4d58-8979-85ace564fa96]
ibm_is_vpc.this: Still creating... [10s elapsed]
ibm_is_vpc.this: Creation complete after 13s [id=r006-1859643c-50b5-434a-921f-01a626fbadb9]
ibm_is_security_group_rule.icmp: Creating...
ibm_is_security_group_rule.http: Creating...
ibm_is_security_group_rule.ssh: Creating...
ibm_is_subnet.this: Creating...
ibm_is_security_group_rule.http: Creation complete after 1s [id=r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-93efa08c-d57b-437f-adc4-20849f3ddd36]
ibm_is_security_group_rule.icmp: Creation complete after 2s [id=r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-a655f20c-516e-4164-91bd-4d20c85f6bb1]
ibm_is_security_group_rule.ssh: Creation complete after 2s [id=r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-06848846-7303-4b1b-b2a9-79718f8ddf47]
ibm_is_subnet.this: Still creating... [10s elapsed]
ibm_is_subnet.this: Creation complete after 13s [id=0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916]
null_resource.run_packer: Creating...
null_resource.run_packer: Provisioning with 'local-exec'...
null_resource.run_packer (local-exec): Executing: ["/bin/sh" "-c" "cd ./packer\nansible-galaxy install geerlingguy.docker\nansible-galaxy install vantaworks.goss\npacker version\npacker init ./ubuntu_focal.pkr.hcl\ntimeout 60m packer build \\\n-var region=us-south \\\n-var subnet_id=0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916 \\\n-var resource_group_id=2885830dd63945e9b3c4e40a3d51cb5e \\\n-var vsi_base_image_name=ibm-ubuntu-20-04-3-minimal-amd64-1 \\\n-var vsi_profile=cx2-2x4 \\\n-var vsi_user_data_file=./shell/user_data.sh \\\n-var ansible_file=./ansible/playbook.yml \\\n-var image_name=ubuntu-focal-docker-0-1-0-9b8b \\\n-force \\\n-color=false \\\n./ubuntu_focal.pkr.hcl\n"]
null_resource.run_packer (local-exec): Starting galaxy role install process
null_resource.run_packer (local-exec): [WARNING]: - geerlingguy.docker (4.2.3) is already installed - use --force to
null_resource.run_packer (local-exec): change version to unspecified
null_resource.run_packer (local-exec): Starting galaxy role install process
null_resource.run_packer (local-exec): [WARNING]: - vantaworks.goss (master) is already installed - use --force to
null_resource.run_packer (local-exec): change version to unspecified
null_resource.run_packer (local-exec): Packer v1.8.1
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: *************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: * Initializing IBM Cloud Packer Plugin - VPC Infrastructure *
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: *************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Generating IAM Access Token...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: IAM Access Token successfully generated!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Retrieving Subnet 0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916 information...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Subnet Information successfully retrieved ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: VPC ID: r006-1859643c-50b5-434a-921f-01a626fbadb9
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Zone: us-south-1
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Fetching Base Image ID...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Base Image ID fetched: r006-2ab9b47b-b13e-4d68-ae91-98124d7fc217
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating SSH Public and Private Key Pair...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Writing Private SSH Key to a file ssh_keys/id_rsa
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Writing Public SSH Key to a file ssh_keys/id_rsa.pub
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Public and Private SSH Key Pair successfully created.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating a new SSH key for VPC...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: SSH Key for VPC successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: SSH Key for VPC's Name: packer-vpc-ssh-key-35920
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: SSH Key for VPC's ID: r006-31a258d3-cf0a-4a6a-a1fc-791cfc9c426e
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating Instance...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance's Name: packer-vpc-vsi-35920
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance's ID: 0717_26d8ce36-c156-43ba-8d81-6874e0127de4
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting for the instance to become ACTIVE...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance is ACTIVE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Getting Public IP...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Reserve a Floating IP and associate it to the instance's network interface
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Reserving a Floating IP
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting for the Floating IP to become ACTIVE...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Floating IP is ACTIVE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Public IP Address: 52.118.186.203
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating a temp Security Group on VPC r006-1859643c-50b5-434a-921f-01a626fbadb9 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Temp Security Group on VPC successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Security Group's Name: packer-vpc-security-group-35920
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Security Group's ID: r006-c10bb125-bcc3-47be-b19f-062379567cbe
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating Security Group's rule to allow ssh connection...
null_resource.run_packer: Still creating... [30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Security Group's rule to allow ssh connection successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ssh rule ID: r006-1ec32490-d233-4a40-b683-38f6bce5cf11
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Attaching Instance to the Security Group
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance successfully added to the Security Group r006-c10bb125-bcc3-47be-b19f-062379567cbe
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Using SSH communicator to connect: 52.118.186.203
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting for SSH to become available...
null_resource.run_packer: Still creating... [40s elapsed]
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
null_resource.run_packer: Still creating... [50s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: unattended-upgrades/focal-updates,now 2.3ubuntu0.1 all [installed,automatic]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Reading package lists...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Building dependency tree...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Reading state information...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: The following packages will be REMOVED:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:   unattended-upgrades
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: 0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: debconf: DbDriver "config": /var/cache/debconf/config.dat is locked by another process: Resource temporarily unavailable
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: After this operation, 451 kB disk space will be freed.
null_resource.run_packer: Still creating... [1m0s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: (Reading database ... 63445 files and directories currently installed.)
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Removing unattended-upgrades (2.3ubuntu0.1) ...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Processing triggers for man-db (2.9.1-1) ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: unattended-upgrades/focal-updates,now 2.3ubuntu0.1 all [residual-config]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 1530 (apt)...
null_resource.run_packer: Still creating... [1m10s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 1690 (apt)...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 1690 (apt)...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 1690 (apt)...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Reading package lists...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Building dependency tree...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Reading state information...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Package 'unattended-upgrades' is not installed, so not removed
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: unattended-upgrades/focal-updates 2.3ubuntu0.1 all
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Provisioning with Ansible...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Setting up proxy adapter for Ansible....
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Executing Ansible: ansible-playbook -e packer_build_name="ubuntu-focal" -e packer_builder_type=ibmcloud-vpc --ssh-extra-args '-o IdentitiesOnly=yes' -e ansible_ssh_private_key_file=/tmp/ansible-key27757986 -i /tmp/packer-provisioner-ansible1831743549 /iaas-tfp/00-dev-env/packer/ansible/playbook.yml
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: [DEPRECATION WARNING]: "include" is deprecated, use include_tasks/import_tasks
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: instead. This feature will be removed in version 2.16. Deprecation warnings can
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:  be disabled by setting deprecation_warnings=False in ansible.cfg.
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: PLAY [play Install Geerlingguy Docker] *****************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [Gathering Facts] *********************************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [Add universe repository for focal] ***************************************
null_resource.run_packer: Still creating... [1m20s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [Install gnupg2] **********************************************************
null_resource.run_packer: Still creating... [1m30s elapsed]
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
null_resource.run_packer: Still creating... [1m40s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure additional dependencies are installed (on Ubuntu < 20.04 and any other systems).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure additional dependencies are installed (on Ubuntu >= 20.04).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Add Docker apt key.] ********************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure curl is present (on older systems without SNI).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Add Docker apt key (alternative for older systems without SNI).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Add Docker repository.] *****************************
null_resource.run_packer: Still creating... [1m50s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Install Docker.] ************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Install Docker (with downgrade option).] ************
null_resource.run_packer: Still creating... [2m0s elapsed]
null_resource.run_packer: Still creating... [2m10s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure /etc/docker/ directory exists.] **************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Configure Docker daemon options.] *******************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: TASK [geerlingguy.docker : Ensure Docker is started and enabled at boot.] ******
null_resource.run_packer: Still creating... [2m20s elapsed]
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
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: default                    : ok=25   changed=10   unreachable=0    failed=0    skipped=8    rescued=0    ignored=0
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Provisioning with Goss
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Configured to run on Linux
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Creating directory: /tmp/goss
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Installing Goss from, https://github.com/aelsabbahy/goss/releases/download/v0.3.9/goss-linux-amd64
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Downloading Goss to /tmp/goss-0.3.9-linux-amd64
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:                                  Dload  Upload   Total   Spent    Left  Speed
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: 100 10.0M  100 10.0M    0     0  22.7M      0 --:--:-- --:--:-- --:--:-- 22.7M
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: goss version v0.3.9
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Uploading goss tests...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Uploading ./goss/goss.yaml
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Running goss tests...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Running GOSS render debug command: cd /tmp/goss &&  /tmp/goss-0.3.9-linux-amd64    render -d > /tmp/debug-goss-spec.yaml
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Goss render debug ran successfully
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Running GOSS validate command: cd /tmp/goss &&   /tmp/goss-0.3.9-linux-amd64    validate --retry-timeout 0s --sleep 1s
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: ...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Total Duration: 0.007s
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu-focal: Count: 3, Failed: 0, Skipped: 0
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Goss validate ran successfully
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Running GOSS render command: cd /tmp/goss &&  /tmp/goss-0.3.9-linux-amd64    render > /tmp/goss-spec.yaml
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Goss render ran successfully
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
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Generating IAM Access Token...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: IAM Access Token successfully generated!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Rebooting instance to cleanly complete any installed software components...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [2m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [2m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance is ACTIVE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Stopping instance ID: 0717_26d8ce36-c156-43ba-8d81-6874e0127de4 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [2m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [3m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Instance successfully stopped!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Creating an Image from instance ID: 0717_26d8ce36-c156-43ba-8d81-6874e0127de4 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Image Successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Image's Name: ubuntu-focal-docker-0-1-0-9b8b
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Image's ID: r006-29133b2b-0fa9-4388-a004-40e8f3ae873e
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting for the Image to become AVAILABLE...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [3m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [3m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [3m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [3m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [3m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 1 minutes
null_resource.run_packer: Still creating... [4m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [4m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 2 minutes
null_resource.run_packer: Still creating... [5m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [5m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [5m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [5m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [5m40s elapsed]
null_resource.run_packer: Still creating... [5m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [6m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 3 minutes
null_resource.run_packer: Still creating... [6m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [6m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [6m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [6m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [6m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [7m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 4 minutes
null_resource.run_packer: Still creating... [7m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [7m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [7m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [7m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [7m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [8m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 5 minutes
null_resource.run_packer: Still creating... [8m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [8m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [8m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [8m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [8m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [9m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 6 minutes
null_resource.run_packer: Still creating... [9m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [9m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [9m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [9m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [9m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: .
null_resource.run_packer: Still creating... [10m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Waiting time: 7 minutes
null_resource.run_packer: Still creating... [10m10s elapsed]
null_resource.run_packer: Still creating... [10m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Image is now AVAILABLE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ****************************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: * Cleaning Up all temporary infrastructure created during packer execution *
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ****************************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Releasing the Floating IP: 52.118.186.203 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: The Floating IP was successfully released!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Deleting Instance ID: 0717_26d8ce36-c156-43ba-8d81-6874e0127de4 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: The instance was successfully deleted!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Deleting Security Group's rule r006-1ec32490-d233-4a40-b683-38f6bce5cf11 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: The Security Group's rule was successfully deleted!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Deleting Security Group packer-vpc-security-group-35920 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: The Security Group was successfully deleted!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Deleting SSH key for VPC packer-vpc-ssh-key-35920 ...
null_resource.run_packer: Still creating... [10m30s elapsed]
null_resource.run_packer: Still creating... [10m40s elapsed]
null_resource.run_packer: Still creating... [10m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: The Key was successfully deleted!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Deleting Public and Private SSH Key Pair...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: Public and Private SSH Key Pair successfully deleted.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ********************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: * Thank you for using IBM Cloud Packer Plugin - VPC Infrastructure *
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu-focal: ********************************************************************
null_resource.run_packer (local-exec): Build 'ibmcloud-vpc.ubuntu-focal' finished after 10 minutes 51 seconds.

null_resource.run_packer (local-exec): ==> Wait completed after 10 minutes 51 seconds

null_resource.run_packer (local-exec): ==> Builds finished. The artifacts of successful builds are:
null_resource.run_packer (local-exec): --> ibmcloud-vpc.ubuntu-focal: Image Name: ubuntu-focal-docker-0-1-0-9b8b || Image ID: r006-29133b2b-0fa9-4388-a004-40e8f3ae873e
null_resource.run_packer: Creation complete after 10m56s [id=6156916383415998489]
data.ibm_is_image.ubuntu-20-04-3-docker: Reading...
data.ibm_is_image.ubuntu-20-04-3-docker: Read complete after 1s [id=r006-29133b2b-0fa9-4388-a004-40e8f3ae873e]
ibm_is_instance.one_from_the_image: Creating...
ibm_is_instance.one_from_the_image: Still creating... [10s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [20s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [30s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [40s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [50s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [1m0s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [1m10s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [1m20s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [1m30s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [1m40s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [1m50s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [2m0s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [2m10s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [2m20s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [2m30s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [2m40s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [2m50s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [3m0s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [3m10s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [3m20s elapsed]
ibm_is_instance.one_from_the_image: Still creating... [3m30s elapsed]
ibm_is_instance.one_from_the_image: Creation complete after 3m37s [id=0717_9789bd12-c397-411a-8bea-9a49a11a31fa]
ibm_is_floating_ip.one_from_the_image: Creating...
ibm_is_floating_ip.one_from_the_image: Still creating... [10s elapsed]
ibm_is_floating_ip.one_from_the_image: Creation complete after 11s [id=r006-0a08c8d2-1fd5-4b39-8637-be699399ae82]
null_resource.ssh_one_from_the_image: Creating...
local_file.temp_private_key_to_one_from_the_image: Creating...
null_resource.ssh_one_from_the_image: Provisioning with 'remote-exec'...
local_file.temp_private_key_to_one_from_the_image: Creation complete after 0s [id=4dc93278e9e84f9e06e0bca66221284884ba3730]
null_resource.ssh_one_from_the_image (remote-exec): Connecting to remote host via SSH...
null_resource.ssh_one_from_the_image (remote-exec):   Host: 52.118.184.95
null_resource.ssh_one_from_the_image (remote-exec):   User: ubuntu
null_resource.ssh_one_from_the_image (remote-exec):   Password: false
null_resource.ssh_one_from_the_image (remote-exec):   Private key: true
null_resource.ssh_one_from_the_image (remote-exec):   Certificate: false
null_resource.ssh_one_from_the_image (remote-exec):   SSH Agent: false
null_resource.ssh_one_from_the_image (remote-exec):   Checking Host Key: false
null_resource.ssh_one_from_the_image (remote-exec):   Target Platform: unix
null_resource.ssh_one_from_the_image (remote-exec): Connected!
null_resource.ssh_one_from_the_image (remote-exec): Linux prefix-us-south-9b8b-in-from-the-image 5.4.0-1004-ibm #5-Ubuntu SMP Thu Sep 2 22:20:48 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
null_resource.ssh_one_from_the_image (remote-exec): docker: /usr/bin/docker /etc/docker /usr/libexec/docker /usr/share/man/man1/docker.1.gz
null_resource.ssh_one_from_the_image: Creation complete after 2s [id=2002096717977225900]

Apply complete! Resources: 13 added, 0 changed, 0 destroyed.

Outputs:

baked_image = {
  "architecture" = "amd64"
  "checksum" = "5bb530387613a2c6870043c63fbecae7452afd7f460d1196da57c7b2a7fd7885"
  "crn" = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::image:r006-29133b2b-0fa9-4388-a004-40e8f3ae873e"
  "encryption" = "none"
  "encryption_key" = tostring(null)
  "id" = "r006-29133b2b-0fa9-4388-a004-40e8f3ae873e"
  "identifier" = tostring(null)
  "name" = "ubuntu-focal-docker-0-1-0-9b8b"
  "os" = "ubuntu-20-04-amd64"
  "source_volume" = "r006-c5e91a64-b03f-4a7d-983a-43b35eaa7d3c"
  "status" = "available"
  "visibility" = "private"
}
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.37.1
tls_private_key.insecure: Refreshing state... [id=16c5024479277faa78dbddedfe7e7a0bfdbcbbe1]
random_id.this: Refreshing state... [id=m4s]
data.ibm_is_zones.this: Reading...
data.ibm_is_image.ubuntu-20-04-3: Reading...
data.ibm_resource_group.this: Reading...
ibm_is_ssh_key.this: Refreshing state... [id=r006-0309d3f9-b82a-4d58-8979-85ace564fa96]
data.ibm_is_zones.this: Read complete after 1s [id=2022-06-09 04:14:08.741448897 +0000 UTC]
data.ibm_resource_group.this: Read complete after 1s [id=2885830dd63945e9b3c4e40a3d51cb5e]
ibm_is_vpc.this: Refreshing state... [id=r006-1859643c-50b5-434a-921f-01a626fbadb9]
data.ibm_is_image.ubuntu-20-04-3: Read complete after 2s [id=r006-2ab9b47b-b13e-4d68-ae91-98124d7fc217]
ibm_is_security_group_rule.icmp: Refreshing state... [id=r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-a655f20c-516e-4164-91bd-4d20c85f6bb1]
ibm_is_subnet.this: Refreshing state... [id=0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916]
ibm_is_security_group_rule.ssh: Refreshing state... [id=r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-06848846-7303-4b1b-b2a9-79718f8ddf47]
ibm_is_security_group_rule.http: Refreshing state... [id=r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-93efa08c-d57b-437f-adc4-20849f3ddd36]
null_resource.run_packer: Refreshing state... [id=6156916383415998489]
data.ibm_is_image.ubuntu-20-04-3-docker: Reading...
data.ibm_is_image.ubuntu-20-04-3-docker: Read complete after 2s [id=r006-29133b2b-0fa9-4388-a004-40e8f3ae873e]
ibm_is_instance.one_from_the_image: Refreshing state... [id=0717_9789bd12-c397-411a-8bea-9a49a11a31fa]
ibm_is_floating_ip.one_from_the_image: Refreshing state... [id=r006-0a08c8d2-1fd5-4b39-8637-be699399ae82]
null_resource.ssh_one_from_the_image: Refreshing state... [id=2002096717977225900]
local_file.temp_private_key_to_one_from_the_image: Refreshing state... [id=4dc93278e9e84f9e06e0bca66221284884ba3730]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # ibm_is_floating_ip.one_from_the_image will be destroyed
  - resource "ibm_is_floating_ip" "one_from_the_image" {
      - address                 = "52.118.184.95" -> null
      - crn                     = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::floating-ip:r006-0a08c8d2-1fd5-4b39-8637-be699399ae82" -> null
      - id                      = "r006-0a08c8d2-1fd5-4b39-8637-be699399ae82" -> null
      - name                    = "prefix-us-south-9b8b-ip-from-the-image" -> null
      - resource_controller_url = "https://cloud.ibm.com/vpc-ext/network/floatingIPs" -> null
      - resource_crn            = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::floating-ip:r006-0a08c8d2-1fd5-4b39-8637-be699399ae82" -> null
      - resource_group          = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name     = "Default" -> null
      - resource_name           = "prefix-us-south-9b8b-ip-from-the-image" -> null
      - resource_status         = "available" -> null
      - status                  = "available" -> null
      - tags                    = [] -> null
      - target                  = "0717-42d6b999-5212-4179-98ef-db1b405fa56a" -> null
      - zone                    = "us-south-1" -> null
    }

  # ibm_is_instance.one_from_the_image will be destroyed
  - resource "ibm_is_instance" "one_from_the_image" {
      - bandwidth               = 4000 -> null
      - crn                     = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::instance:0717_9789bd12-c397-411a-8bea-9a49a11a31fa" -> null
      - disks                   = [] -> null
      - force_action            = false -> null
      - gpu                     = [] -> null
      - id                      = "0717_9789bd12-c397-411a-8bea-9a49a11a31fa" -> null
      - image                   = "r006-29133b2b-0fa9-4388-a004-40e8f3ae873e" -> null
      - keys                    = [
          - "r006-0309d3f9-b82a-4d58-8979-85ace564fa96",
        ] -> null
      - memory                  = 4 -> null
      - name                    = "prefix-us-south-9b8b-in-from-the-image" -> null
      - placement_target        = [] -> null
      - profile                 = "cx2-2x4" -> null
      - resource_controller_url = "https://cloud.ibm.com/vpc-ext/compute/vs" -> null
      - resource_crn            = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::instance:0717_9789bd12-c397-411a-8bea-9a49a11a31fa" -> null
      - resource_group          = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name     = "Default" -> null
      - resource_name           = "prefix-us-south-9b8b-in-from-the-image" -> null
      - resource_status         = "running" -> null
      - status                  = "running" -> null
      - status_reasons          = [] -> null
      - tags                    = [] -> null
      - total_network_bandwidth = 3000 -> null
      - total_volume_bandwidth  = 1000 -> null
      - vcpu                    = [
          - {
              - architecture = "amd64"
              - count        = 2
            },
        ] -> null
      - volume_attachments      = [
          - {
              - id          = "0717-80e20965-fac9-47de-8c3c-ee2af3b1e714"
              - name        = "caller-decree-riverbed-breeches"
              - volume_crn  = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::volume:r006-eae2bc80-d471-4f9d-8496-dbb35bdb4d75"
              - volume_id   = "r006-eae2bc80-d471-4f9d-8496-dbb35bdb4d75"
              - volume_name = "dedicate-facing-fondness-encourage"
            },
        ] -> null
      - vpc                     = "r006-1859643c-50b5-434a-921f-01a626fbadb9" -> null
      - wait_before_delete      = true -> null
      - zone                    = "us-south-1" -> null

      - boot_volume {
          - iops    = 3000 -> null
          - name    = "dedicate-facing-fondness-encourage" -> null
          - profile = "general-purpose" -> null
          - size    = 100 -> null
        }

      - primary_network_interface {
          - allow_ip_spoofing    = false -> null
          - id                   = "0717-42d6b999-5212-4179-98ef-db1b405fa56a" -> null
          - name                 = "service-awning-heroics-sturdy" -> null
          - port_speed           = 0 -> null
          - primary_ipv4_address = "10.240.0.5" -> null
          - security_groups      = [
              - "r006-63e96e08-9f88-4c33-9afe-64946672418e",
            ] -> null
          - subnet               = "0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916" -> null
        }
    }

  # ibm_is_security_group_rule.http will be destroyed
  - resource "ibm_is_security_group_rule" "http" {
      - direction   = "inbound" -> null
      - group       = "r006-63e96e08-9f88-4c33-9afe-64946672418e" -> null
      - id          = "r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-93efa08c-d57b-437f-adc4-20849f3ddd36" -> null
      - ip_version  = "ipv4" -> null
      - protocol    = "tcp" -> null
      - related_crn = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r006-63e96e08-9f88-4c33-9afe-64946672418e" -> null
      - remote      = "0.0.0.0/0" -> null
      - rule_id     = "r006-93efa08c-d57b-437f-adc4-20849f3ddd36" -> null

      - tcp {
          - port_max = 80 -> null
          - port_min = 80 -> null
        }
    }

  # ibm_is_security_group_rule.icmp will be destroyed
  - resource "ibm_is_security_group_rule" "icmp" {
      - direction   = "inbound" -> null
      - group       = "r006-63e96e08-9f88-4c33-9afe-64946672418e" -> null
      - id          = "r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-a655f20c-516e-4164-91bd-4d20c85f6bb1" -> null
      - ip_version  = "ipv4" -> null
      - protocol    = "icmp" -> null
      - related_crn = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r006-63e96e08-9f88-4c33-9afe-64946672418e" -> null
      - remote      = "0.0.0.0/0" -> null
      - rule_id     = "r006-a655f20c-516e-4164-91bd-4d20c85f6bb1" -> null

      - icmp {
          - code = 0 -> null
          - type = 8 -> null
        }
    }

  # ibm_is_security_group_rule.ssh will be destroyed
  - resource "ibm_is_security_group_rule" "ssh" {
      - direction   = "inbound" -> null
      - group       = "r006-63e96e08-9f88-4c33-9afe-64946672418e" -> null
      - id          = "r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-06848846-7303-4b1b-b2a9-79718f8ddf47" -> null
      - ip_version  = "ipv4" -> null
      - protocol    = "tcp" -> null
      - related_crn = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r006-63e96e08-9f88-4c33-9afe-64946672418e" -> null
      - remote      = "0.0.0.0/0" -> null
      - rule_id     = "r006-06848846-7303-4b1b-b2a9-79718f8ddf47" -> null

      - tcp {
          - port_max = 22 -> null
          - port_min = 22 -> null
        }
    }

  # ibm_is_ssh_key.this will be destroyed
  - resource "ibm_is_ssh_key" "this" {
      - crn                     = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::key:r006-0309d3f9-b82a-4d58-8979-85ace564fa96" -> null
      - fingerprint             = "SHA256:SGppyXtDc9DOws0VSPnUZQpwRN+6O+MTThojZC631CA" -> null
      - id                      = "r006-0309d3f9-b82a-4d58-8979-85ace564fa96" -> null
      - length                  = 4096 -> null
      - name                    = "prefix-us-south-9b8b-ssh-key" -> null
      - public_key              = (sensitive) -> null
      - resource_controller_url = "https://cloud.ibm.com/vpc-ext/compute/sshKeys" -> null
      - resource_crn            = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::key:r006-0309d3f9-b82a-4d58-8979-85ace564fa96" -> null
      - resource_group          = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name     = "Default" -> null
      - resource_name           = "prefix-us-south-9b8b-ssh-key" -> null
      - tags                    = [] -> null
      - type                    = "rsa" -> null
    }

  # ibm_is_subnet.this will be destroyed
  - resource "ibm_is_subnet" "this" {
      - access_tags                  = [] -> null
      - available_ipv4_address_count = 250 -> null
      - crn                          = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::subnet:0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916" -> null
      - id                           = "0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916" -> null
      - ip_version                   = "ipv4" -> null
      - ipv4_cidr_block              = "10.240.0.0/24" -> null
      - name                         = "prefix-us-south-9b8b-subnet" -> null
      - network_acl                  = "r006-a67e4ae7-6679-4185-aa10-98d1fe0ec561" -> null
      - resource_controller_url      = "https://cloud.ibm.com/vpc-ext/network/subnets" -> null
      - resource_crn                 = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::subnet:0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916" -> null
      - resource_group               = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name          = "Default" -> null
      - resource_name                = "prefix-us-south-9b8b-subnet" -> null
      - resource_status              = "available" -> null
      - routing_table                = "r006-f3f4f308-3fea-4f7f-ad91-b68e7ce2b0e7" -> null
      - status                       = "available" -> null
      - tags                         = [] -> null
      - total_ipv4_address_count     = 256 -> null
      - vpc                          = "r006-1859643c-50b5-434a-921f-01a626fbadb9" -> null
      - zone                         = "us-south-1" -> null
    }

  # ibm_is_vpc.this will be destroyed
  - resource "ibm_is_vpc" "this" {
      - address_prefix_management   = "auto" -> null
      - classic_access              = false -> null
      - crn                         = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::vpc:r006-1859643c-50b5-434a-921f-01a626fbadb9" -> null
      - cse_source_addresses        = [
          - {
              - address   = "10.249.64.129"
              - zone_name = "us-south-1"
            },
          - {
              - address   = "10.249.207.187"
              - zone_name = "us-south-2"
            },
          - {
              - address   = "10.249.82.223"
              - zone_name = "us-south-3"
            },
        ] -> null
      - default_network_acl         = "r006-a67e4ae7-6679-4185-aa10-98d1fe0ec561" -> null
      - default_network_acl_crn     = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::network-acl:r006-a67e4ae7-6679-4185-aa10-98d1fe0ec561" -> null
      - default_network_acl_name    = "igloo-reptile-drank-stratus" -> null
      - default_routing_table       = "r006-f3f4f308-3fea-4f7f-ad91-b68e7ce2b0e7" -> null
      - default_routing_table_name  = "chapman-chloride-footbath-reprimand" -> null
      - default_security_group      = "r006-63e96e08-9f88-4c33-9afe-64946672418e" -> null
      - default_security_group_crn  = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r006-63e96e08-9f88-4c33-9afe-64946672418e" -> null
      - default_security_group_name = "vehicular-ambiance-stylized-barbecue" -> null
      - id                          = "r006-1859643c-50b5-434a-921f-01a626fbadb9" -> null
      - name                        = "prefix-us-south-9b8b-vpc" -> null
      - resource_controller_url     = "https://cloud.ibm.com/vpc-ext/network/vpcs" -> null
      - resource_crn                = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::vpc:r006-1859643c-50b5-434a-921f-01a626fbadb9" -> null
      - resource_group              = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name         = "Default" -> null
      - resource_name               = "prefix-us-south-9b8b-vpc" -> null
      - resource_status             = "available" -> null
      - security_group              = [
          - {
              - group_id   = "r006-63e96e08-9f88-4c33-9afe-64946672418e"
              - group_name = "vehicular-ambiance-stylized-barbecue"
              - rules      = [
                  - {
                      - code       = 0
                      - direction  = "outbound"
                      - ip_version = "ipv4"
                      - port_max   = 0
                      - port_min   = 0
                      - protocol   = "all"
                      - remote     = "0.0.0.0/0"
                      - rule_id    = "r006-d34a010e-1801-4485-a780-dad5c859a340"
                      - type       = 0
                    },
                  - {
                      - code       = 0
                      - direction  = "inbound"
                      - ip_version = "ipv4"
                      - port_max   = 0
                      - port_min   = 0
                      - protocol   = "all"
                      - remote     = "r006-63e96e08-9f88-4c33-9afe-64946672418e"
                      - rule_id    = "r006-6db84ac1-b95d-4a94-808f-fbc6c8d9d836"
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
                      - rule_id    = "r006-93efa08c-d57b-437f-adc4-20849f3ddd36"
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
                      - rule_id    = "r006-a655f20c-516e-4164-91bd-4d20c85f6bb1"
                      - type       = 8
                    },
                  - {
                      - code       = 0
                      - direction  = "inbound"
                      - ip_version = "ipv4"
                      - port_max   = 22
                      - port_min   = 22
                      - protocol   = "tcp"
                      - remote     = "0.0.0.0/0"
                      - rule_id    = "r006-06848846-7303-4b1b-b2a9-79718f8ddf47"
                      - type       = 0
                    },
                ]
            },
        ] -> null
      - status                      = "available" -> null
      - subnets                     = [
          - {
              - available_ipv4_address_count = 250
              - id                           = "0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916"
              - name                         = "prefix-us-south-9b8b-subnet"
              - status                       = "available"
              - total_ipv4_address_count     = 256
              - zone                         = "us-south-1"
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
      - id                   = "4dc93278e9e84f9e06e0bca66221284884ba3730" -> null
    }

  # null_resource.run_packer will be destroyed
  - resource "null_resource" "run_packer" {
      - id       = "6156916383415998489" -> null
      - triggers = {
          - "when_version_changed" = "ubuntu-focal-docker-0-1-0-9b8b"
        } -> null
    }

  # null_resource.ssh_one_from_the_image will be destroyed
  - resource "null_resource" "ssh_one_from_the_image" {
      - id       = "2002096717977225900" -> null
      - triggers = {
          - "fip_instance_id" = "0717_9789bd12-c397-411a-8bea-9a49a11a31fa"
        } -> null
    }

  # random_id.this will be destroyed
  - resource "random_id" "this" {
      - b64_std     = "m4s=" -> null
      - b64_url     = "m4s" -> null
      - byte_length = 2 -> null
      - dec         = "39819" -> null
      - hex         = "9b8b" -> null
      - id          = "m4s" -> null
    }

  # tls_private_key.insecure will be destroyed
  - resource "tls_private_key" "insecure" {
      - algorithm                  = "RSA" -> null
      - ecdsa_curve                = "P224" -> null
      - id                         = "16c5024479277faa78dbddedfe7e7a0bfdbcbbe1" -> null
      - private_key_pem            = (sensitive value)
      - public_key_fingerprint_md5 = "8e:ca:02:13:73:68:d6:47:9b:84:e2:d3:09:63:eb:3c" -> null
      - public_key_openssh         = <<-EOT
            ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCyPJo6xqbwbbWjvviZboASe4hjXvAMUO+Ul7VxPZHOZPnhGZuyk53O49G/JbL/DgGG/w+D3DZXwKzv3moNiZRsVunkkopP8nAqoHY0dNIcO4WnZTB+YWjvahHUazOxQQCywlLGusH9wnw4tVbumPaGeCwwheXIjWUwE1wa4ZO2sQQD9tYA+2Z6Y3IvcQvH1649Hkk+caQJjxPXKZr/2IoPDfiRaNrUOcdnpYrFtjeB39RngUbcaOUrXxAPrAufvUBNxUMlemqGkbvzc/ujRYftGgGKGZz+M+VpKf6be5+wU1LlPSDf23aS4ND0IWmdgJHMiaza/SjL/UXqbt/RKjqS0ShYM/7FcTG3gfkKldr1iCK/eQp2KOwzaBr+7vVuaAqIHB+bQuHgK0vYMrGWIzVzYaPRxEz11rvFSbsw9pwKQ96XhrOheWtoPa158nV1wjafBOpOGqeLs8RiuXs9TBohdWzkKM+h3WWpu6PIjxJxYM+rekgGNyAlQx4HFcfZ7wmPEbU4Fp7VN0li+6v9UAv4Gy40duv42rpM+Jxh8tptk0632pyLXvE7Qc1gQ+UBquyWtouDBcmIbVTTsBCQNM2qWPJBoD2YtFttwNf/Qm/v0o3uSpv0LIT51TB4DST3pYbqgrGnVk0FkDJ6WVWyuD/k+54RMGvx6t4d/gwOtvZ98w==
        EOT -> null
      - public_key_pem             = <<-EOT
            -----BEGIN PUBLIC KEY-----
            MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsjyaOsam8G21o774mW6A
            EnuIY17wDFDvlJe1cT2RzmT54RmbspOdzuPRvyWy/w4Bhv8Pg9w2V8Cs795qDYmU
            bFbp5JKKT/JwKqB2NHTSHDuFp2UwfmFo72oR1GszsUEAssJSxrrB/cJ8OLVW7pj2
            hngsMIXlyI1lMBNcGuGTtrEEA/bWAPtmemNyL3ELx9euPR5JPnGkCY8T1yma/9iK
            Dw34kWja1DnHZ6WKxbY3gd/UZ4FG3GjlK18QD6wLn71ATcVDJXpqhpG783P7o0WH
            7RoBihmc/jPlaSn+m3ufsFNS5T0g39t2kuDQ9CFpnYCRzIms2v0oy/1F6m7f0So6
            ktEoWDP+xXExt4H5CpXa9Ygiv3kKdijsM2ga/u71bmgKiBwfm0Lh4CtL2DKxliM1
            c2Gj0cRM9da7xUm7MPacCkPel4azoXlraD2tefJ1dcI2nwTqThqni7PEYrl7PUwa
            IXVs5CjPod1lqbujyI8ScWDPq3pIBjcgJUMeBxXH2e8JjxG1OBae1TdJYvur/VAL
            +BsuNHbr+Nq6TPicYfLabZNOt9qci17xO0HNYEPlAarslraLgwXJiG1U07AQkDTN
            qljyQaA9mLRbbcDX/0Jv79KN7kqb9CyE+dUweA0k96WG6oKxp1ZNBZAyellVsrg/
            5PueETBr8ereHf4MDrb2ffMCAwEAAQ==
            -----END PUBLIC KEY-----
        EOT -> null
      - rsa_bits                   = 4096 -> null
    }

Plan: 0 to add, 0 to change, 13 to destroy.

Changes to Outputs:
  - baked_image = {
      - architecture   = "amd64"
      - checksum       = "5bb530387613a2c6870043c63fbecae7452afd7f460d1196da57c7b2a7fd7885"
      - crn            = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::image:r006-29133b2b-0fa9-4388-a004-40e8f3ae873e"
      - encryption     = "none"
      - encryption_key = null
      - id             = "r006-29133b2b-0fa9-4388-a004-40e8f3ae873e"
      - identifier     = null
      - name           = "ubuntu-focal-docker-0-1-0-9b8b"
      - os             = "ubuntu-20-04-amd64"
      - source_volume  = "r006-c5e91a64-b03f-4a7d-983a-43b35eaa7d3c"
      - status         = "available"
      - visibility     = "private"
    } -> null
null_resource.ssh_one_from_the_image: Destroying... [id=2002096717977225900]
local_file.temp_private_key_to_one_from_the_image: Destroying... [id=4dc93278e9e84f9e06e0bca66221284884ba3730]
null_resource.ssh_one_from_the_image: Destruction complete after 0s
local_file.temp_private_key_to_one_from_the_image: Destruction complete after 0s
ibm_is_security_group_rule.icmp: Destroying... [id=r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-a655f20c-516e-4164-91bd-4d20c85f6bb1]
ibm_is_floating_ip.one_from_the_image: Destroying... [id=r006-0a08c8d2-1fd5-4b39-8637-be699399ae82]
ibm_is_security_group_rule.http: Destroying... [id=r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-93efa08c-d57b-437f-adc4-20849f3ddd36]
ibm_is_security_group_rule.http: Destruction complete after 1s
ibm_is_security_group_rule.icmp: Destruction complete after 2s
ibm_is_floating_ip.one_from_the_image: Still destroying... [id=r006-0a08c8d2-1fd5-4b39-8637-be699399ae82, 10s elapsed]
ibm_is_floating_ip.one_from_the_image: Destruction complete after 11s
ibm_is_instance.one_from_the_image: Destroying... [id=0717_9789bd12-c397-411a-8bea-9a49a11a31fa]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_9789bd12-c397-411a-8bea-9a49a11a31fa, 10s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_9789bd12-c397-411a-8bea-9a49a11a31fa, 20s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_9789bd12-c397-411a-8bea-9a49a11a31fa, 30s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_9789bd12-c397-411a-8bea-9a49a11a31fa, 40s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_9789bd12-c397-411a-8bea-9a49a11a31fa, 50s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_9789bd12-c397-411a-8bea-9a49a11a31fa, 1m0s elapsed]
ibm_is_instance.one_from_the_image: Destruction complete after 1m4s
null_resource.run_packer: Destroying... [id=6156916383415998489]
ibm_is_security_group_rule.ssh: Destroying... [id=r006-63e96e08-9f88-4c33-9afe-64946672418e.r006-06848846-7303-4b1b-b2a9-79718f8ddf47]
ibm_is_ssh_key.this: Destroying... [id=r006-0309d3f9-b82a-4d58-8979-85ace564fa96]
null_resource.run_packer: Destruction complete after 0s
ibm_is_subnet.this: Destroying... [id=0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916]
ibm_is_security_group_rule.ssh: Destruction complete after 0s
ibm_is_ssh_key.this: Destruction complete after 0s
tls_private_key.insecure: Destroying... [id=16c5024479277faa78dbddedfe7e7a0bfdbcbbe1]
tls_private_key.insecure: Destruction complete after 0s
ibm_is_subnet.this: Still destroying... [id=0717-1dfeecdf-7b1c-46c0-b507-f2bef7cc2916, 10s elapsed]
ibm_is_subnet.this: Destruction complete after 10s
ibm_is_vpc.this: Destroying... [id=r006-1859643c-50b5-434a-921f-01a626fbadb9]
ibm_is_vpc.this: Still destroying... [id=r006-1859643c-50b5-434a-921f-01a626fbadb9, 10s elapsed]
ibm_is_vpc.this: Destruction complete after 11s
random_id.this: Destroying... [id=m4s]
random_id.this: Destruction complete after 0s

Destroy complete! Resources: 13 destroyed.
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.37.1
Switched to workspace "default".
us-south
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.37.1
Deleted workspace "us-south"!
ubuntu@9ca9d3e1b155:/iaas-tfp/00-dev-env$
```
