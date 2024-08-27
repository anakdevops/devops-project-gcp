#!/bin/bash

terraform_apply() {
  local dir=$1
  echo "Applying Terraform in directory: $dir"
  cd "$dir" || exit
  terraform apply -var-file="../terraform.tfvars" -auto-approve
  cd - > /dev/null || exit
}


terraform_apply "vpc"
terraform_apply "app-node"
terraform_apply "rancher-multinode"




echo "All Terraform commands executed successfully."
