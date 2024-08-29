#!/bin/bash

terraform_plan() {
  local dir=$1
  echo "Applying Terraform in directory: $dir"
  cd "$dir" || exit
  terraform plan -var-file="../terraform.tfvars" -auto-approve
  cd - > /dev/null || exit
}


terraform_plan "vpc"
terraform_plan "app-node"
terraform_plan "rancher-multinode"




echo "All Terraform commands executed successfully."
