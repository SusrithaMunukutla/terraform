######################################################################
# Variable declaration for AWS
##

variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "aws_key_name" {
  default = "The key name that should be used for the instance"
}

variable "aws_account" {
  description = "Account Number"
}

variable "aws_region" {
  description = "Hive aws region"
}
