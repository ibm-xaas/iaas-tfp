#!/usr/bin/env bash
# ./prod_test.sh | tee prod_test.log
#
#IBM_PROD_REGION=('us-south')

terragrunt init -no-color
terragrunt apply -no-color -auto-approve
