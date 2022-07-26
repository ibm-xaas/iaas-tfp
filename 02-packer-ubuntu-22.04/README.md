The Log

```
ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$ ./prod_test_create.sh
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.38.6

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of ibm-cloud/ibm from the dependency lock file
- Reusing previous version of hashicorp/random from the dependency lock file
- Reusing previous version of hashicorp/null from the dependency lock file
- Reusing previous version of hashicorp/local from the dependency lock file
- Reusing previous version of hashicorp/tls from the dependency lock file
- Using previously-installed ibm-cloud/ibm v1.43.0
- Using previously-installed hashicorp/random v3.3.2
- Using previously-installed hashicorp/null v3.1.1
- Using previously-installed hashicorp/local v2.2.3
- Using previously-installed hashicorp/tls v4.0.1

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.38.6
data.ibm_is_zones.this: Reading...
data.ibm_resource_group.this: Reading...
data.ibm_is_image.ubuntu: Reading...
data.ibm_resource_group.this: Read complete after 0s [id=2885830dd63945e9b3c4e40a3d51cb5e]
data.ibm_is_zones.this: Read complete after 0s [id=2022-07-26 02:50:37.474019772 +0000 UTC]
data.ibm_is_image.ubuntu: Read complete after 1s [id=r006-b5427052-bf0d-400a-a55c-e70894560b96]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create
 <= read (data resources)

Terraform will perform the following actions:

  # data.ibm_is_image.ubuntu-docker will be read during apply
  # (config refers to values not yet known)
 <= data "ibm_is_image" "ubuntu-docker" {
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
      + zone                              = "us-south-1"

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
tls_private_key.insecure: Creating...
random_id.this: Creating...
random_id.this: Creation complete after 0s [id=xTo]
ibm_is_vpc.this: Creating...
tls_private_key.insecure: Creation complete after 1s [id=1d563d74b645fdab453c3542546b3e61340cb736]
ibm_is_ssh_key.this: Creating...
ibm_is_ssh_key.this: Creation complete after 2s [id=r006-488b7a4b-ee6a-4735-9432-aa75ccb5ecf2]
ibm_is_vpc.this: Still creating... [10s elapsed]
ibm_is_vpc.this: Creation complete after 14s [id=r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79]
ibm_is_security_group_rule.ssh: Creating...
ibm_is_security_group_rule.icmp: Creating...
ibm_is_security_group_rule.http: Creating...
ibm_is_subnet.this: Creating...
ibm_is_security_group_rule.http: Creation complete after 1s [id=r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-027de3e2-d095-4c0c-8c7f-52eb58983054]
ibm_is_security_group_rule.icmp: Creation complete after 2s [id=r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-6ccab776-6787-43f1-9255-c106862ea49d]
ibm_is_security_group_rule.ssh: Creation complete after 4s [id=r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-1fd51805-8fc4-4489-8aa0-3a14087c0d7d]
ibm_is_subnet.this: Still creating... [10s elapsed]
ibm_is_subnet.this: Creation complete after 13s [id=0717-97a699a8-9b5a-49ed-b32d-228779cf74f1]
null_resource.run_packer: Creating...
null_resource.run_packer: Provisioning with 'local-exec'...
null_resource.run_packer (local-exec): Executing: ["/bin/sh" "-c" "cd ./packer\nansible-galaxy install geerlingguy.docker\nansible-galaxy install vantaworks.goss\npacker version\npacker init ./ubuntu.pkr.hcl\ntimeout 60m packer build \\\n-var region=us-south \\\n-var subnet_id=0717-97a699a8-9b5a-49ed-b32d-228779cf74f1 \\\n-var resource_group_id=2885830dd63945e9b3c4e40a3d51cb5e \\\n-var vsi_base_image_name=ibm-ubuntu-22-04-minimal-amd64-1 \\\n-var vsi_profile=cx2-2x4 \\\n-var vsi_user_data_file=./shell/user_data.sh \\\n-var ansible_file=./ansible/playbook.yml \\\n-var image_name=ubuntu-jammy-docker-0-1-0-c53a \\\n-force \\\n-color=false \\\n./ubuntu.pkr.hcl\n"]
 \\\n-var image_name=ubuntu-jammy-docker-0-1-0-c53a \\\n-force \\\n-color=false \\\n./ubuntu.pkr.hcl\n"]
null_resource.run_packer (local-exec): Starting galaxy role install process
null_resource.run_packer (local-exec): [WARNING]: - geerlingguy.docker (4.2.4) is already installed - use --force to
null_resource.run_packer (local-exec): change version to unspecified
null_resource.run_packer (local-exec): Starting galaxy role install process
null_resource.run_packer (local-exec): [WARNING]: - vantaworks.goss (master) is already installed - use --force to
null_resource.run_packer (local-exec): change version to unspecified
null_resource.run_packer (local-exec): Packer v1.8.2
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: *************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: * Initializing IBM Cloud Packer Plugin - VPC Infrastructure *
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: *************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Creating VPC service...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: VPC service creation successful!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Retrieving Subnet 0717-97a699a8-9b5a-49ed-b32d-228779cf74f1 information...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Subnet Information successfully retrieved ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: VPC ID: r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Zone: us-south-1
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Fetching Base Image ID...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Base Image ID fetched: r006-b5427052-bf0d-400a-a55c-e70894560b96
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Creating SSH Public and Private Key Pair...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Writing Private SSH Key to a file ssh_keys/id_rsa
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Writing Public SSH Key to a file ssh_keys/id_rsa.pub
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Public and Private SSH Key Pair successfully created.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Creating a new SSH key for VPC...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: SSH Key for VPC successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: SSH Key for VPC's Name: packer-vpc-ssh-key-25110
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: SSH Key for VPC's ID: r006-f41137d0-5a43-4aa0-b363-e10d4bacb516
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Creating Instance...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Fetching ImageID...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: ImageID fetched: ibm-ubuntu-22-04-minimal-amd64-1
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Instance successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Instance's Name: packer-vpc-vsi-25110
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Instance's ID: 0717_4a94a1e3-21cc-4ef4-952c-5e036e22c024
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Waiting for the instance to become ACTIVE...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Instance is ACTIVE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Getting public IP...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Reserve a Floating IP and associate it to the instance's network interface
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Reserving a Floating IP
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Waiting for the Floating IP to become ACTIVE...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Floating IP is ACTIVE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Creating a temp Security Group on VPC r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Temp Security Group on VPC successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Security Group's Name: packer-vpc-security-group-25110
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Security Group's ID: r006-025b0302-22a2-44cd-a831-91f50ad049ee
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Creating Security Group's rule to allow ssh connection...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Security Group's rule to allow ssh connection successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Attaching Instance to the Security Group
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Instance successfully added to the Security Group.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Using SSH communicator to connect: 52.118.189.221
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Waiting for SSH to become available...
null_resource.run_packer: Still creating... [40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Connected to SSH!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: ________________________   ____________________________________
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: __  ____/___  ____/___  | / /___  ____/__  ___/____  _/__  ___/
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: _  / __  __  __/   __   |/ / __  __/   _____ \  __  /  _____ \
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: / /_/ /  _  /___   _  /|  /  _  /___   ____/ / __/ /   ____/ /
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: \____/   /_____/   /_/ |_/   /_____/   /____/  /___/   /____/
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Provisioning with shell script: ./shell/user_data.sh
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: unattended-upgrades/jammy,now 2.8ubuntu1 all [installed,automatic]
null_resource.run_packer: Still creating... [50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: sudo: unable to resolve host packer-vpc-vsi-25110: Name or service not known
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 1472 (apt)...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Reading package lists...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Building dependency tree...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Reading state information...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Package 'unattended-upgrades' is not installed, so not removed
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: unattended-upgrades/jammy,now 2.8ubuntu1 all [residual-config]
null_resource.run_packer: Still creating... [1m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: sudo: unable to resolve host packer-vpc-vsi-25110: Name or service not known
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 1648 (apt)...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontend. It is held by process 1648 (apt)...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Reading package lists...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Building dependency tree...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Reading state information...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Package 'unattended-upgrades' is not installed, so not removed
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: unattended-upgrades/jammy 2.8ubuntu1 all
null_resource.run_packer: Still creating... [1m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: [info] fetching release script for tag='v0.52.0'
null_resource.run_packer: Still creating... [1m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: [info] using release tag='v0.52.0' version='0.52.0' os='linux' arch='amd64'
null_resource.run_packer: Still creating... [1m30s elapsed]
null_resource.run_packer: Still creating... [1m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: [info] installed /usr/local/bin/syft
null_resource.run_packer: Still creating... [1m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: [info] checking github for the current release tag
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: [info] fetching release script for tag='v0.44.0'
null_resource.run_packer: Still creating... [2m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: [info] checking github for the current release tag
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: [info] using release tag='v0.44.0' version='0.44.0' os='linux' arch='amd64'
null_resource.run_packer: Still creating... [2m10s elapsed]
null_resource.run_packer: Still creating... [2m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: [info] installed /usr/local/bin/grype
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Provisioning with Ansible...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Setting up proxy adapter for Ansible....
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Executing Ansible: ansible-playbook -e packer_build_name="ubuntu" -e packer_builder_type=ibmcloud-vpc --ssh-extra-args '-o IdentitiesOnly=yes' -e ansible_ssh_private_key_file=/tmp/ansible-key2389588767 -i /tmp/packer-provisioner-ansible4153748866 /iaas-tfp/02-packer-ubuntu-22.04/packer/ansible/playbook.yml
null_resource.run_packer: Still creating... [2m30s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: [DEPRECATION WARNING]: "include" is deprecated, use include_tasks/import_tasks
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: instead. This feature will be removed in version 2.16. Deprecation warnings can
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:  be disabled by setting deprecation_warnings=False in ansible.cfg.
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: PLAY [play Install Geerlingguy Docker] *****************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [Gathering Facts] *********************************************************
null_resource.run_packer: Still creating... [2m40s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [Add universe repository for focal] ***************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [Install gnupg2] **********************************************************
null_resource.run_packer: Still creating... [2m50s elapsed]
null_resource.run_packer: Still creating... [3m0s elapsed]
null_resource.run_packer: Still creating... [3m10s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : include_tasks] **************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : include_tasks] **************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: included: /home/ubuntu/.ansible/roles/geerlingguy.docker/tasks/setup-Debian.yml for default
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Ensure old versions of Docker are not installed.] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Ensure dependencies are installed.] *****************
null_resource.run_packer: Still creating... [3m20s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Ensure additional dependencies are installed (on Ubuntu < 20.04 and any other systems).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Ensure additional dependencies are installed (on Ubuntu >= 20.04).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Add Docker apt key.] ********************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Ensure curl is present (on older systems without SNI).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Add Docker apt key (alternative for older systems without SNI).] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Add Docker repository.] *****************************
null_resource.run_packer: Still creating... [3m30s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Install Docker.] ************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Install Docker (with downgrade option).] ************
null_resource.run_packer: Still creating... [3m40s elapsed]
null_resource.run_packer: Still creating... [3m50s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Ensure /etc/docker/ directory exists.] **************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Configure Docker daemon options.] *******************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Ensure Docker is started and enabled at boot.] ******
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Ensure handlers are notified now to avoid firewall conflicts.] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: RUNNING HANDLER [geerlingguy.docker : restart docker] **************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : include_tasks] **************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: included: /home/ubuntu/.ansible/roles/geerlingguy.docker/tasks/docker-compose.yml for default
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Check current docker-compose version.] **************
null_resource.run_packer: Still creating... [4m0s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : set_fact] *******************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Delete existing docker-compose version if it's different.] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Install Docker Compose (if configured).] ************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : include_tasks] **************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: included: /home/ubuntu/.ansible/roles/geerlingguy.docker/tasks/docker-users.yml for default
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [geerlingguy.docker : Ensure docker users are added to the docker group.] ***
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: changed: [default] => (item=ubuntu)
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: PLAY [play Install the latest goss] ********************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [Gathering Facts] *********************************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [vantaworks.goss : Version Detection : Find Available Versions] ***********
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [vantaworks.goss : Version Detection : Setting the facts straight] ********
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [vantaworks.goss : Version Detection : Select newest version] *************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [vantaworks.goss : Install : Check if goss is already installed] **********
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ok: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [vantaworks.goss : Install : Download and install Goss] *******************
null_resource.run_packer: Still creating... [4m10s elapsed]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: changed: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: TASK [vantaworks.goss : Uninstall : Remove goss binary] ************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: skipping: [default]
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: PLAY RECAP *********************************************************************
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: default                    : ok=24   changed=9    unreachable=0    failed=0    skipped=9    rescued=0    ignored=0
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Provisioning with Goss
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Configured to run on Linux
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Creating directory: /tmp/goss
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Installing Goss from, https://github.com/aelsabbahy/goss/releases/download/v0.3.9/goss-linux-amd64
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Downloading Goss to /tmp/goss-0.3.9-linux-amd64
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:                                  Dload  Upload   Total   Spent    Left  Speed
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: 100 10.0M  100 10.0M    0     0  15.9M      0 --:--:-- --:--:-- --:--:-- 44.9M
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: goss version v0.3.9
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Uploading goss tests...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Uploading ./goss/goss.yaml
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Running goss tests...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Running GOSS render command: cd /tmp/goss &&  /tmp/goss-0.3.9-linux-amd64    render > /tmp/goss-spec.yaml
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Goss render ran successfully
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Running GOSS render debug command: cd /tmp/goss &&  /tmp/goss-0.3.9-linux-amd64    render -d > /tmp/debug-goss-spec.yaml
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Goss render debug ran successfully
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Running GOSS validate command: cd /tmp/goss &&   /tmp/goss-0.3.9-linux-amd64    validate --retry-timeout 0s --sleep 1s
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: ...
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Total Duration: 0.007s
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Count: 3, Failed: 0, Skipped: 0
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Goss validate ran successfully
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Downloading spec file and debug info
null_resource.run_packer (local-exec):     ibmcloud-vpc.ubuntu: Downloading Goss specs from, /tmp/goss-spec.yaml and /tmp/debug-goss-spec.yaml to current dir
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: __________  ____  _________ _____   ___________
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: __  ___/_ \/ /_ \/ /___    |___  | / /__  ____/
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: _____ \ __  / __  / __  /| |__   |/ / _  / __
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: ____/ / _  /  _  /  _  ___ |_  /|  /  / /_/ /
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: /____/  /_/   /_/   /_/  |_|/_/ |_/   \____/
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Creating VPC service...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: VPC service creation successful!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Rebooting instance to cleanly complete any installed software components...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [4m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Instance is ACTIVE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Stopping instance ID: 0717_4a94a1e3-21cc-4ef4-952c-5e036e22c024 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [4m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [4m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Instance successfully stopped!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Creating an Image from instance ID: 0717_4a94a1e3-21cc-4ef4-952c-5e036e22c024 ...
null_resource.run_packer: Still creating... [4m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Image Successfully created!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Image's Name: ubuntu-jammy-docker-0-1-0-c53a
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Image's ID: r006-4eae8a22-24bb-4458-89eb-6161c3d24f19
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Waiting for the Image to become AVAILABLE...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [5m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [5m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [5m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [5m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [5m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Waiting time: 1 minutes
null_resource.run_packer: Still creating... [5m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [6m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [6m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [6m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [6m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [6m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Waiting time: 2 minutes
null_resource.run_packer: Still creating... [6m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [7m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [7m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [7m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [7m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [7m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Waiting time: 3 minutes
null_resource.run_packer: Still creating... [7m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [8m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [8m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [8m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [8m30s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [8m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Waiting time: 4 minutes
null_resource.run_packer: Still creating... [8m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [9m0s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [9m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [9m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [9m30s elapsed]
null_resource.run_packer: Still creating... [9m40s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: .
null_resource.run_packer: Still creating... [9m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Waiting time: 5 minutes
null_resource.run_packer: Still creating... [10m0s elapsed]
null_resource.run_packer: Still creating... [10m10s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Image is now AVAILABLE!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: ****************************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: * Cleaning Up all temporary infrastructure created during packer execution *
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: ****************************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Releasing the Floating IP: 52.118.189.221 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: The Floating IP was successfully released!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Deleting Instance ID: 0717_4a94a1e3-21cc-4ef4-952c-5e036e22c024 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: The instance was successfully deleted!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Deleting Security Group's rule r006-f719ddd4-bae0-430c-bb57-2aabe98def63 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: The Security Group's rule was successfully deleted!
null_resource.run_packer: Still creating... [10m20s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Deleting Security Group packer-vpc-security-group-25110 ...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: The Security Group was successfully deleted!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Deleting SSH key for VPC packer-vpc-ssh-key-25110 ...
null_resource.run_packer: Still creating... [10m30s elapsed]
null_resource.run_packer: Still creating... [10m40s elapsed]
null_resource.run_packer: Still creating... [10m50s elapsed]
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: The Key was successfully deleted!
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Deleting Public and Private SSH Key Pair...
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: Public and Private SSH Key Pair successfully deleted.
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu:
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: ********************************************************************
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: * Thank you for using IBM Cloud Packer Plugin - VPC Infrastructure *
null_resource.run_packer (local-exec): ==> ibmcloud-vpc.ubuntu: ********************************************************************
null_resource.run_packer (local-exec): Build 'ibmcloud-vpc.ubuntu' finished after 10 minutes 50 seconds.

null_resource.run_packer (local-exec): ==> Wait completed after 10 minutes 50 seconds

null_resource.run_packer (local-exec): ==> Builds finished. The artifacts of successful builds are:
null_resource.run_packer (local-exec): --> ibmcloud-vpc.ubuntu: Image Name: ubuntu-jammy-docker-0-1-0-c53a || Image ID: r006-4eae8a22-24bb-4458-89eb-6161c3d24f19
null_resource.run_packer: Creation complete after 10m55s [id=7070700986045703155]
data.ibm_is_image.ubuntu-docker: Reading...
data.ibm_is_image.ubuntu-docker: Read complete after 0s [id=r006-4eae8a22-24bb-4458-89eb-6161c3d24f19]
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
ibm_is_instance.one_from_the_image: Creation complete after 2m41s [id=0717_37583e8d-cd71-4df0-a202-3e730ae20e15]
ibm_is_floating_ip.one_from_the_image: Creating...
ibm_is_floating_ip.one_from_the_image: Still creating... [10s elapsed]
ibm_is_floating_ip.one_from_the_image: Creation complete after 11s [id=r006-d40a4045-2dab-42a3-838f-de8086ff1008]
null_resource.ssh_one_from_the_image: Creating...
local_file.temp_private_key_to_one_from_the_image: Creating...
null_resource.ssh_one_from_the_image: Provisioning with 'remote-exec'...
local_file.temp_private_key_to_one_from_the_image: Creation complete after 0s [id=7f0f9a68e6ec2858f04f3d7e95725879b2075dc0]
null_resource.ssh_one_from_the_image (remote-exec): Connecting to remote host via SSH...
null_resource.ssh_one_from_the_image (remote-exec):   Host: 150.240.70.129
null_resource.ssh_one_from_the_image (remote-exec):   User: ubuntu
null_resource.ssh_one_from_the_image (remote-exec):   Password: false
null_resource.ssh_one_from_the_image (remote-exec):   Private key: true
null_resource.ssh_one_from_the_image (remote-exec):   Certificate: false
null_resource.ssh_one_from_the_image (remote-exec):   SSH Agent: false
null_resource.ssh_one_from_the_image (remote-exec):   Checking Host Key: false
null_resource.ssh_one_from_the_image (remote-exec):   Target Platform: unix
null_resource.ssh_one_from_the_image (remote-exec): Connected!
null_resource.ssh_one_from_the_image (remote-exec): Linux prefix-us-south-c53a-in-from-the-image 5.15.0-1002-ibm #2-Ubuntu SMP Fri Apr 1 10:12:00 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux
null_resource.ssh_one_from_the_image (remote-exec): docker: /usr/bin/docker /etc/docker /usr/libexec/docker /usr/share/man/man1/docker.1.gz
null_resource.ssh_one_from_the_image: Creation complete after 1s [id=604508345777427629]

Apply complete! Resources: 13 added, 0 changed, 0 destroyed.

Outputs:

baked_image = {
  "architecture" = "amd64"
  "checksum" = "dff8c2105d59c6e8c8f12032cf07fd4a945ce8e0c2e74ddb0a78256cecf4e915"
  "crn" = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::image:r006-4eae8a22-24bb-4458-89eb-6161c3d24f19"
  "encryption" = "none"
  "encryption_key" = tostring(null)
  "id" = "r006-4eae8a22-24bb-4458-89eb-6161c3d24f19"
  "identifier" = tostring(null)
  "name" = "ubuntu-jammy-docker-0-1-0-c53a"
  "os" = "ubuntu-22-04-amd64"
  "source_volume" = "r006-c481f148-ee37-4c79-a57a-b164ca3ad72c"
  "status" = "available"
  "visibility" = "private"
}
ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$

ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$ ssh -i prv_key ubuntu@150.240.70.129
Warning: Permanently added '150.240.70.129' (ED25519) to the list of known hosts.
Welcome to Ubuntu 22.04 LTS (GNU/Linux 5.15.0-1002-ibm x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Tue Jul 26 03:08:46 UTC 2022

  System load:  0.01513671875     Processes:                114
  Usage of /:   2.6% of 96.75GB   Users logged in:          0
  Memory usage: 6%                IPv4 address for docker0: 172.17.0.1
  Swap usage:   0%                IPv4 address for ens3:    10.240.0.5


71 updates can be applied immediately.
49 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable


Last login: Tue Jul 26 03:04:55 2022 from 52.116.128.28
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ubuntu@prefix-us-south-c53a-in-from-the-image:~$ whereis syft
syft: /usr/local/bin/syft
ubuntu@prefix-us-south-c53a-in-from-the-image:~$ whereis grype
grype: /usr/local/bin/grype
ubuntu@prefix-us-south-c53a-in-from-the-image:~$ grype /usr/local/bin
 ✔ Vulnerability DB        [updated]
 ✔ Indexed /usr/local/bin
 ✔ Cataloged packages      [465 packages]
 ✔ Scanned image           [4 vulnerabilities]
[0000]  WARN some package(s) are missing CPEs. This may result in missing vulnerabilities. You may autogenerate these using: --add-cpes-if-none
NAME                        INSTALLED  FIXED-IN  TYPE       VULNERABILITY   SEVERITY
google.golang.org/protobuf  v1.28.0              go-module  CVE-2015-5237   High
google.golang.org/protobuf  v1.28.0              go-module  CVE-2021-22570  High
ubuntu@prefix-us-south-c53a-in-from-the-image:~$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 22.04 LTS
Release:        22.04
Codename:       jammy
ubuntu@prefix-us-south-c53a-in-from-the-image:~$ exit
logout
Connection to 150.240.70.129 closed.
ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$

ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$ ./prod_test_delete.sh
[INFO] Getting version from tgenv-version-name
[INFO] TGENV_VERSION is 0.38.6
random_id.this: Refreshing state... [id=xTo]
tls_private_key.insecure: Refreshing state... [id=1d563d74b645fdab453c3542546b3e61340cb736]
data.ibm_is_zones.this: Reading...
data.ibm_is_image.ubuntu: Reading...
data.ibm_resource_group.this: Reading...
ibm_is_ssh_key.this: Refreshing state... [id=r006-488b7a4b-ee6a-4735-9432-aa75ccb5ecf2]
data.ibm_is_zones.this: Read complete after 1s [id=2022-07-26 03:11:18.676116978 +0000 UTC]
data.ibm_resource_group.this: Read complete after 1s [id=2885830dd63945e9b3c4e40a3d51cb5e]
ibm_is_vpc.this: Refreshing state... [id=r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79]
data.ibm_is_image.ubuntu: Read complete after 1s [id=r006-b5427052-bf0d-400a-a55c-e70894560b96]
ibm_is_security_group_rule.icmp: Refreshing state... [id=r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-6ccab776-6787-43f1-9255-c106862ea49d]
ibm_is_subnet.this: Refreshing state... [id=0717-97a699a8-9b5a-49ed-b32d-228779cf74f1]
ibm_is_security_group_rule.ssh: Refreshing state... [id=r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-1fd51805-8fc4-4489-8aa0-3a14087c0d7d]
ibm_is_security_group_rule.http: Refreshing state... [id=r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-027de3e2-d095-4c0c-8c7f-52eb58983054]
null_resource.run_packer: Refreshing state... [id=7070700986045703155]
data.ibm_is_image.ubuntu-docker: Reading...
data.ibm_is_image.ubuntu-docker: Read complete after 0s [id=r006-4eae8a22-24bb-4458-89eb-6161c3d24f19]
ibm_is_instance.one_from_the_image: Refreshing state... [id=0717_37583e8d-cd71-4df0-a202-3e730ae20e15]
ibm_is_floating_ip.one_from_the_image: Refreshing state... [id=r006-d40a4045-2dab-42a3-838f-de8086ff1008]
null_resource.ssh_one_from_the_image: Refreshing state... [id=604508345777427629]
local_file.temp_private_key_to_one_from_the_image: Refreshing state... [id=7f0f9a68e6ec2858f04f3d7e95725879b2075dc0]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # ibm_is_floating_ip.one_from_the_image will be destroyed
  - resource "ibm_is_floating_ip" "one_from_the_image" {
      - address                 = "150.240.70.129" -> null
      - crn                     = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::floating-ip:r006-d40a4045-2dab-42a3-838f-de8086ff1008" -> null
      - id                      = "r006-d40a4045-2dab-42a3-838f-de8086ff1008" -> null
      - name                    = "prefix-us-south-c53a-ip-from-the-image" -> null
      - resource_controller_url = "https://cloud.ibm.com/vpc-ext/network/floatingIPs" -> null
      - resource_crn            = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::floating-ip:r006-d40a4045-2dab-42a3-838f-de8086ff1008" -> null
      - resource_group          = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name     = "Default" -> null
      - resource_name           = "prefix-us-south-c53a-ip-from-the-image" -> null
      - resource_status         = "available" -> null
      - status                  = "available" -> null
      - tags                    = [] -> null
      - target                  = "0717-9a8e9f89-a8c3-4d00-819a-ca50d637b2d9" -> null
      - target_list             = [
          - {
              - crn           = ""
              - deleted       = []
              - href          = "https://us-south.iaas.cloud.ibm.com/v1/instances/0717_37583e8d-cd71-4df0-a202-3e730ae20e15/network_interfaces/0717-9a8e9f89-a8c3-4d00-819a-ca50d637b2d9"
              - id            = "0717-9a8e9f89-a8c3-4d00-819a-ca50d637b2d9"
              - name          = "untapped-subtly-pencil-altitude"
              - primary_ip    = [
                  - {
                      - address       = "10.240.0.5"
                      - href          = "https://us-south.iaas.cloud.ibm.com/v1/subnets/0717-97a699a8-9b5a-49ed-b32d-228779cf74f1/reserved_ips/0717-0e884e0d-fb4b-4ee7-93df-d724c542f4f3"
                      - name          = "bullfight-bubbling-democratic-spooky"
                      - reserved_ip   = "0717-0e884e0d-fb4b-4ee7-93df-d724c542f4f3"
                      - resource_type = "subnet_reserved_ip"
                    },
                ]
              - resource_type = "network_interface"
            },
        ] -> null
      - zone                    = "us-south-1" -> null
    }

  # ibm_is_instance.one_from_the_image will be destroyed
  - resource "ibm_is_instance" "one_from_the_image" {
      - availability_policy_host_failure = "restart" -> null
      - bandwidth                        = 4000 -> null
      - crn                              = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::instance:0717_37583e8d-cd71-4df0-a202-3e730ae20e15" -> null
      - disks                            = [] -> null
      - force_action                     = false -> null
      - gpu                              = [] -> null
      - id                               = "0717_37583e8d-cd71-4df0-a202-3e730ae20e15" -> null
      - image                            = "r006-4eae8a22-24bb-4458-89eb-6161c3d24f19" -> null
      - keys                             = [
          - "r006-488b7a4b-ee6a-4735-9432-aa75ccb5ecf2",
        ] -> null
      - memory                           = 4 -> null
      - metadata_service_enabled         = false -> null
      - name                             = "prefix-us-south-c53a-in-from-the-image" -> null
      - placement_target                 = [] -> null
      - profile                          = "cx2-2x4" -> null
      - resource_controller_url          = "https://cloud.ibm.com/vpc-ext/compute/vs" -> null
      - resource_crn                     = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::instance:0717_37583e8d-cd71-4df0-a202-3e730ae20e15" -> null
      - resource_group                   = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name              = "Default" -> null
      - resource_name                    = "prefix-us-south-c53a-in-from-the-image" -> null
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
              - id          = "0717-83604896-a67b-474c-a177-f279a3e95e68"
              - name        = "remark-bay-darkened-many"
              - volume_crn  = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::volume:r006-27b4b272-8d13-4bf9-a486-7912d5dc38db"
              - volume_id   = "r006-27b4b272-8d13-4bf9-a486-7912d5dc38db"
              - volume_name = "kneel-mold-easterly-default"
            },
        ] -> null
      - vpc                              = "r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79" -> null
      - wait_before_delete               = true -> null
      - zone                             = "us-south-1" -> null

      - boot_volume {
          - iops      = 3000 -> null
          - name      = "kneel-mold-easterly-default" -> null
          - profile   = "general-purpose" -> null
          - size      = 100 -> null
          - volume_id = "r006-27b4b272-8d13-4bf9-a486-7912d5dc38db" -> null
        }

      - primary_network_interface {
          - allow_ip_spoofing    = false -> null
          - id                   = "0717-9a8e9f89-a8c3-4d00-819a-ca50d637b2d9" -> null
          - name                 = "untapped-subtly-pencil-altitude" -> null
          - port_speed           = 3000 -> null
          - primary_ipv4_address = "10.240.0.5" -> null
          - security_groups      = [
              - "r006-35c877de-2377-4f0f-9aa4-ecf306641a57",
            ] -> null
          - subnet               = "0717-97a699a8-9b5a-49ed-b32d-228779cf74f1" -> null

          - primary_ip {
              - address       = "10.240.0.5" -> null
              - auto_delete   = true -> null
              - href          = "https://us-south.iaas.cloud.ibm.com/v1/subnets/0717-97a699a8-9b5a-49ed-b32d-228779cf74f1/reserved_ips/0717-0e884e0d-fb4b-4ee7-93df-d724c542f4f3" -> null
              - name          = "bullfight-bubbling-democratic-spooky" -> null
              - reserved_ip   = "0717-0e884e0d-fb4b-4ee7-93df-d724c542f4f3" -> null
              - resource_type = "subnet_reserved_ip" -> null
            }
        }
    }

  # ibm_is_security_group_rule.http will be destroyed
  - resource "ibm_is_security_group_rule" "http" {
      - direction   = "inbound" -> null
      - group       = "r006-35c877de-2377-4f0f-9aa4-ecf306641a57" -> null
      - id          = "r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-027de3e2-d095-4c0c-8c7f-52eb58983054" -> null
      - ip_version  = "ipv4" -> null
      - protocol    = "tcp" -> null
      - related_crn = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r006-35c877de-2377-4f0f-9aa4-ecf306641a57" -> null
      - remote      = "0.0.0.0/0" -> null
      - rule_id     = "r006-027de3e2-d095-4c0c-8c7f-52eb58983054" -> null

      - tcp {
          - port_max = 80 -> null
          - port_min = 80 -> null
        }
    }

  # ibm_is_security_group_rule.icmp will be destroyed
  - resource "ibm_is_security_group_rule" "icmp" {
      - direction   = "inbound" -> null
      - group       = "r006-35c877de-2377-4f0f-9aa4-ecf306641a57" -> null
      - id          = "r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-6ccab776-6787-43f1-9255-c106862ea49d" -> null
      - ip_version  = "ipv4" -> null
      - protocol    = "icmp" -> null
      - related_crn = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r006-35c877de-2377-4f0f-9aa4-ecf306641a57" -> null
      - remote      = "0.0.0.0/0" -> null
      - rule_id     = "r006-6ccab776-6787-43f1-9255-c106862ea49d" -> null

      - icmp {
          - code = 0 -> null
          - type = 8 -> null
        }
    }

  # ibm_is_security_group_rule.ssh will be destroyed
  - resource "ibm_is_security_group_rule" "ssh" {
      - direction   = "inbound" -> null
      - group       = "r006-35c877de-2377-4f0f-9aa4-ecf306641a57" -> null
      - id          = "r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-1fd51805-8fc4-4489-8aa0-3a14087c0d7d" -> null
      - ip_version  = "ipv4" -> null
      - protocol    = "tcp" -> null
      - related_crn = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r006-35c877de-2377-4f0f-9aa4-ecf306641a57" -> null
      - remote      = "0.0.0.0/0" -> null
      - rule_id     = "r006-1fd51805-8fc4-4489-8aa0-3a14087c0d7d" -> null

      - tcp {
          - port_max = 22 -> null
          - port_min = 22 -> null
        }
    }

  # ibm_is_ssh_key.this will be destroyed
  - resource "ibm_is_ssh_key" "this" {
      - crn                     = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::key:r006-488b7a4b-ee6a-4735-9432-aa75ccb5ecf2" -> null
      - fingerprint             = "SHA256:jQjV1QlxQmzVdAMAdQ0uKuI8DD2URhwK2e8066rJE8w" -> null
      - id                      = "r006-488b7a4b-ee6a-4735-9432-aa75ccb5ecf2" -> null
      - length                  = 4096 -> null
      - name                    = "prefix-us-south-c53a-ssh-key" -> null
      - public_key              = (sensitive) -> null
      - resource_controller_url = "https://cloud.ibm.com/vpc-ext/compute/sshKeys" -> null
      - resource_crn            = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::key:r006-488b7a4b-ee6a-4735-9432-aa75ccb5ecf2" -> null
      - resource_group          = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name     = "Default" -> null
      - resource_name           = "prefix-us-south-c53a-ssh-key" -> null
      - tags                    = [] -> null
      - type                    = "rsa" -> null
    }

  # ibm_is_subnet.this will be destroyed
  - resource "ibm_is_subnet" "this" {
      - access_tags                  = [] -> null
      - available_ipv4_address_count = 250 -> null
      - crn                          = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::subnet:0717-97a699a8-9b5a-49ed-b32d-228779cf74f1" -> null
      - id                           = "0717-97a699a8-9b5a-49ed-b32d-228779cf74f1" -> null
      - ip_version                   = "ipv4" -> null
      - ipv4_cidr_block              = "10.240.0.0/24" -> null
      - name                         = "prefix-us-south-c53a-subnet" -> null
      - network_acl                  = "r006-c36c075d-1304-43b6-aa18-96b615b463dd" -> null
      - resource_controller_url      = "https://cloud.ibm.com/vpc-ext/network/subnets" -> null
      - resource_crn                 = "crn:v1:bluemix:public:is:us-south-1:a/c560c8e42d2f49a48210811bd6f5ee73::subnet:0717-97a699a8-9b5a-49ed-b32d-228779cf74f1" -> null
      - resource_group               = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name          = "Default" -> null
      - resource_name                = "prefix-us-south-c53a-subnet" -> null
      - resource_status              = "available" -> null
      - routing_table                = "r006-e15828dd-729b-4c29-93d4-cb957f754713" -> null
      - status                       = "available" -> null
      - tags                         = [] -> null
      - total_ipv4_address_count     = 256 -> null
      - vpc                          = "r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79" -> null
      - zone                         = "us-south-1" -> null
    }

  # ibm_is_vpc.this will be destroyed
  - resource "ibm_is_vpc" "this" {
      - address_prefix_management   = "auto" -> null
      - classic_access              = false -> null
      - crn                         = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::vpc:r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79" -> null
      - cse_source_addresses        = [
          - {
              - address   = "10.22.14.85"
              - zone_name = "us-south-1"
            },
          - {
              - address   = "10.22.29.153"
              - zone_name = "us-south-2"
            },
          - {
              - address   = "10.249.214.32"
              - zone_name = "us-south-3"
            },
        ] -> null
      - default_network_acl         = "r006-c36c075d-1304-43b6-aa18-96b615b463dd" -> null
      - default_network_acl_crn     = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::network-acl:r006-c36c075d-1304-43b6-aa18-96b615b463dd" -> null
      - default_network_acl_name    = "volley-threaten-gigahertz-primate" -> null
      - default_routing_table       = "r006-e15828dd-729b-4c29-93d4-cb957f754713" -> null
      - default_routing_table_name  = "leotard-swampland-pounce-headstone" -> null
      - default_security_group      = "r006-35c877de-2377-4f0f-9aa4-ecf306641a57" -> null
      - default_security_group_crn  = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::security-group:r006-35c877de-2377-4f0f-9aa4-ecf306641a57" -> null
      - default_security_group_name = "spearhead-uncanny-lemon-putdown" -> null
      - id                          = "r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79" -> null
      - name                        = "prefix-us-south-c53a-vpc" -> null
      - resource_controller_url     = "https://cloud.ibm.com/vpc-ext/network/vpcs" -> null
      - resource_crn                = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::vpc:r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79" -> null
      - resource_group              = "2885830dd63945e9b3c4e40a3d51cb5e" -> null
      - resource_group_name         = "Default" -> null
      - resource_name               = "prefix-us-south-c53a-vpc" -> null
      - resource_status             = "available" -> null
      - security_group              = [
          - {
              - group_id   = "r006-35c877de-2377-4f0f-9aa4-ecf306641a57"
              - group_name = "spearhead-uncanny-lemon-putdown"
              - rules      = [
                  - {
                      - code       = 0
                      - direction  = "outbound"
                      - ip_version = "ipv4"
                      - port_max   = 0
                      - port_min   = 0
                      - protocol   = "all"
                      - remote     = "0.0.0.0/0"
                      - rule_id    = "r006-26c6aaf6-7976-4e20-88e9-d7a555edc7f0"
                      - type       = 0
                    },
                  - {
                      - code       = 0
                      - direction  = "inbound"
                      - ip_version = "ipv4"
                      - port_max   = 0
                      - port_min   = 0
                      - protocol   = "all"
                      - remote     = "r006-35c877de-2377-4f0f-9aa4-ecf306641a57"
                      - rule_id    = "r006-6fca1551-9b6d-4801-8461-351759f530a1"
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
                      - rule_id    = "r006-027de3e2-d095-4c0c-8c7f-52eb58983054"
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
                      - rule_id    = "r006-6ccab776-6787-43f1-9255-c106862ea49d"
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
                      - rule_id    = "r006-1fd51805-8fc4-4489-8aa0-3a14087c0d7d"
                      - type       = 0
                    },
                ]
            },
        ] -> null
      - status                      = "available" -> null
      - subnets                     = [
          - {
              - available_ipv4_address_count = 250
              - id                           = "0717-97a699a8-9b5a-49ed-b32d-228779cf74f1"
              - name                         = "prefix-us-south-c53a-subnet"
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
      - id                   = "7f0f9a68e6ec2858f04f3d7e95725879b2075dc0" -> null
    }

  # null_resource.run_packer will be destroyed
  - resource "null_resource" "run_packer" {
      - id       = "7070700986045703155" -> null
      - triggers = {
          - "when_version_changed" = "ubuntu-jammy-docker-0-1-0-c53a"
        } -> null
    }

  # null_resource.ssh_one_from_the_image will be destroyed
  - resource "null_resource" "ssh_one_from_the_image" {
      - id       = "604508345777427629" -> null
      - triggers = {
          - "fip_instance_id" = "0717_37583e8d-cd71-4df0-a202-3e730ae20e15"
        } -> null
    }

  # random_id.this will be destroyed
  - resource "random_id" "this" {
      - b64_std     = "xTo=" -> null
      - b64_url     = "xTo" -> null
      - byte_length = 2 -> null
      - dec         = "50490" -> null
      - hex         = "c53a" -> null
      - id          = "xTo" -> null
    }

  # tls_private_key.insecure will be destroyed
  - resource "tls_private_key" "insecure" {
      - algorithm                     = "RSA" -> null
      - ecdsa_curve                   = "P224" -> null
      - id                            = "1d563d74b645fdab453c3542546b3e61340cb736" -> null
      - private_key_openssh           = (sensitive value)
      - private_key_pem               = (sensitive value)
      - private_key_pem_pkcs8         = (sensitive value)
      - public_key_fingerprint_md5    = "3b:98:48:47:69:c4:1a:00:31:f4:ca:b6:b5:91:95:8a" -> null
      - public_key_fingerprint_sha256 = "SHA256:jQjV1QlxQmzVdAMAdQ0uKuI8DD2URhwK2e8066rJE8w" -> null
      - public_key_openssh            = <<-EOT
            ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDRiky7gu3sONbNWEfs10Fymxi8t2coR19K/dAaLoXRiVXufO3P21zZ3g64/oHEGx1ZxRc4j6YkRNvKN7d1iO+T0kkq9NOMyB2hxoNFKnu46PZNiZbdL5HMyweXbgSdO5xIIft5DxzaERnhe7f4lnfMdHzCXoFAwTeuxmRMiLroTlxvDcJ9vvd6qrQDGW9RIh23TZogKpBIhKdNQhncecgEUpMMRvgVa71qxEw1wjeqDOlVxtiqsuMUWYOdFxbaVVM39PEaALk75yDkxjAmpBlxhg/HvEEDDolo3g71vQbcjh+6pJZ/sd1L9oIRzp221USLUiy/bp7iPSTh8j87JVnXwI+F4lLUZwU56ggcXQUUbSJrm+s1A+9AtIrj6gzgFcoxsCQoS91MglmwZOgg83iTT21E+Nn5kH5rJcrspnQoPq098d/stbNkTJujIi4ui//jcxuk6UdzauDGKE1R17rBfl87DFVcFlcNRU6ihgBBXnPqdQ7ciaLrknb2wuTlAM5u5easOD52Z5J5wB8L2lx2oqIcxWVksbVIjNaeo2mhiNvG2GXYfoRLNYLnY1MJIfsxrO3+j3/nA9y2wjqlxM/talVU7F/UzOjN660IdwLMfW06eYRH8IZ/+avLCcZ9Cc65ef7fg9IQbCq4vi7wHX5jIt4/akjNA64CdTtBTdf64w==
        EOT -> null
      - public_key_pem                = <<-EOT
            -----BEGIN PUBLIC KEY-----
            MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA0YpMu4Lt7DjWzVhH7NdB
            cpsYvLdnKEdfSv3QGi6F0YlV7nztz9tc2d4OuP6BxBsdWcUXOI+mJETbyje3dYjv
            k9JJKvTTjMgdocaDRSp7uOj2TYmW3S+RzMsHl24EnTucSCH7eQ8c2hEZ4Xu3+JZ3
            zHR8wl6BQME3rsZkTIi66E5cbw3Cfb73eqq0AxlvUSIdt02aICqQSISnTUIZ3HnI
            BFKTDEb4FWu9asRMNcI3qgzpVcbYqrLjFFmDnRcW2lVTN/TxGgC5O+cg5MYwJqQZ
            cYYPx7xBAw6JaN4O9b0G3I4fuqSWf7HdS/aCEc6dttVEi1Isv26e4j0k4fI/OyVZ
            18CPheJS1GcFOeoIHF0FFG0ia5vrNQPvQLSK4+oM4BXKMbAkKEvdTIJZsGToIPN4
            k09tRPjZ+ZB+ayXK7KZ0KD6tPfHf7LWzZEyboyIuLov/43MbpOlHc2rgxihNUde6
            wX5fOwxVXBZXDUVOooYAQV5z6nUO3Imi65J29sLk5QDObuXmrDg+dmeSecAfC9pc
            dqKiHMVlZLG1SIzWnqNpoYjbxthl2H6ESzWC52NTCSH7Mazt/o9/5wPctsI6pcTP
            7WpVVOxf1MzozeutCHcCzH1tOnmER/CGf/mrywnGfQnOuXn+34PSEGwquL4u8B1+
            YyLeP2pIzQOuAnU7QU3X+uMCAwEAAQ==
            -----END PUBLIC KEY-----
        EOT -> null
      - rsa_bits                      = 4096 -> null
    }

Plan: 0 to add, 0 to change, 13 to destroy.

Changes to Outputs:
  - baked_image = {
      - architecture   = "amd64"
      - checksum       = "dff8c2105d59c6e8c8f12032cf07fd4a945ce8e0c2e74ddb0a78256cecf4e915"
      - crn            = "crn:v1:bluemix:public:is:us-south:a/c560c8e42d2f49a48210811bd6f5ee73::image:r006-4eae8a22-24bb-4458-89eb-6161c3d24f19"
      - encryption     = "none"
      - encryption_key = null
      - id             = "r006-4eae8a22-24bb-4458-89eb-6161c3d24f19"
      - identifier     = null
      - name           = "ubuntu-jammy-docker-0-1-0-c53a"
      - os             = "ubuntu-22-04-amd64"
      - source_volume  = "r006-c481f148-ee37-4c79-a57a-b164ca3ad72c"
      - status         = "available"
      - visibility     = "private"
    } -> null
local_file.temp_private_key_to_one_from_the_image: Destroying... [id=7f0f9a68e6ec2858f04f3d7e95725879b2075dc0]
local_file.temp_private_key_to_one_from_the_image: Destruction complete after 0s
null_resource.ssh_one_from_the_image: Destroying... [id=604508345777427629]
null_resource.ssh_one_from_the_image: Destruction complete after 0s
ibm_is_security_group_rule.icmp: Destroying... [id=r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-6ccab776-6787-43f1-9255-c106862ea49d]
ibm_is_floating_ip.one_from_the_image: Destroying... [id=r006-d40a4045-2dab-42a3-838f-de8086ff1008]
ibm_is_security_group_rule.http: Destroying... [id=r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-027de3e2-d095-4c0c-8c7f-52eb58983054]
ibm_is_security_group_rule.icmp: Destruction complete after 1s
ibm_is_security_group_rule.http: Destruction complete after 1s
ibm_is_floating_ip.one_from_the_image: Still destroying... [id=r006-d40a4045-2dab-42a3-838f-de8086ff1008, 10s elapsed]
ibm_is_floating_ip.one_from_the_image: Destruction complete after 11s
ibm_is_instance.one_from_the_image: Destroying... [id=0717_37583e8d-cd71-4df0-a202-3e730ae20e15]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_37583e8d-cd71-4df0-a202-3e730ae20e15, 10s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_37583e8d-cd71-4df0-a202-3e730ae20e15, 20s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_37583e8d-cd71-4df0-a202-3e730ae20e15, 30s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_37583e8d-cd71-4df0-a202-3e730ae20e15, 40s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_37583e8d-cd71-4df0-a202-3e730ae20e15, 50s elapsed]
ibm_is_instance.one_from_the_image: Still destroying... [id=0717_37583e8d-cd71-4df0-a202-3e730ae20e15, 1m0s elapsed]
ibm_is_instance.one_from_the_image: Destruction complete after 1m4s
null_resource.run_packer: Destroying... [id=7070700986045703155]
ibm_is_security_group_rule.ssh: Destroying... [id=r006-35c877de-2377-4f0f-9aa4-ecf306641a57.r006-1fd51805-8fc4-4489-8aa0-3a14087c0d7d]
ibm_is_ssh_key.this: Destroying... [id=r006-488b7a4b-ee6a-4735-9432-aa75ccb5ecf2]
null_resource.run_packer: Destruction complete after 0s
ibm_is_subnet.this: Destroying... [id=0717-97a699a8-9b5a-49ed-b32d-228779cf74f1]
ibm_is_security_group_rule.ssh: Destruction complete after 0s
ibm_is_ssh_key.this: Destruction complete after 1s
tls_private_key.insecure: Destroying... [id=1d563d74b645fdab453c3542546b3e61340cb736]
tls_private_key.insecure: Destruction complete after 0s
ibm_is_subnet.this: Still destroying... [id=0717-97a699a8-9b5a-49ed-b32d-228779cf74f1, 10s elapsed]
ibm_is_subnet.this: Destruction complete after 11s
ibm_is_vpc.this: Destroying... [id=r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79]
ibm_is_vpc.this: Still destroying... [id=r006-5ab8c239-492a-4996-ab59-5ba5e85a3a79, 10s elapsed]
ibm_is_vpc.this: Destruction complete after 11s
random_id.this: Destroying... [id=xTo]
random_id.this: Destruction complete after 0s

Destroy complete! Resources: 13 destroyed.
ubuntu@d469a0e5c748:/iaas-tfp/02-packer-ubuntu-22.04$

ubuntu@d469a0e5c748:/iaas-tfp$ pre-commit run -a
trim trailing whitespace.................................................Passed
fix end of files.........................................................Passed
check yaml...............................................................Passed
check for added large files..............................................Passed
Detect secrets...........................................................Passed
Terraform validate.......................................................Passed
Terraform fmt............................................................Passed
Terraform validate with tfsec............................................Passed
ubuntu@d469a0e5c748:/iaas-tfp$
```
