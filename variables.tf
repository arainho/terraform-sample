variable "access_key" {}
variable "secret_key" {}

variable "public_key_path" {
  default = "terraform_rsa.pub"
}

variable "key_name" {
  description = "arainho terraform key"
  default = "terraform_rsa"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-1"
}

# Ubuntu Server 16.04 LTS
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-58d7e821"
  }
}
