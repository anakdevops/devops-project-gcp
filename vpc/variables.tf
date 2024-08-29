variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The region where resources will be created"
  type        = string
  default     = "us-central1"
}

variable "credentials_file" {
  description = "Path to the GCP credentials JSON file"
  type        = string
}


variable "vpc_name" {
  default = "vpc-anakdevops"
}

variable "subnet_name" {
  default = "sub-anakdevops"
}

variable "cidr_range" {
  default = "10.0.0.0/16"
}


