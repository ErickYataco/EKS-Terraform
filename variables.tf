variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}

variable "region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "torus"
}

variable "project" {
  default = "torus"
}

variable "env" {
  default = "prod"
}

variable "node-istance-type" {
  default = "prod"
}