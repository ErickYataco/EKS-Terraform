terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region           = "${var.region}"  
  profile          = "${var.aws_profile}"
}

data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
}

provider "http" {
}