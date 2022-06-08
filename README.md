[![pre-commit](https://github.com/ibm-xaas/iaas-tfp/actions/workflows/pre-commit.yaml/badge.svg?branch=main)](https://github.com/ibm-xaas/iaas-tfp/actions/workflows/pre-commit.yaml)
# iaas-tfp

The purpose of this repo is to build some examples for IaaS (Infrastructure as a Service) features of IBM Cloud using IBM Terraform Provider.
```
$ docker-compose pull
Pulling iaas-tfp ... done
$ export IBMCLOUD_API_KEY=<YOUR_PROD_API_KEY>
$ docker-compose run iaas-tfp
ubuntu@c75e5c10e09e:/iaas-tfp$ cd 01-simple-vsi/
ubuntu@c75e5c10e09e:/iaas-tfp/01-simple-vsi$ terraform init -upgrade
ubuntu@c75e5c10e09e:/iaas-tfp/01-simple-vsi$ terraform plan
ubuntu@c75e5c10e09e:/iaas-tfp/01-simple-vsi$ terraform apply -auto-approve
ubuntu@c75e5c10e09e:/iaas-tfp/01-simple-vsi$ terraform destroy -auto-approve
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
