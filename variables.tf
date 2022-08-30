locals {
  common_tags = {
    Name = "Nginix-Server"
    Env  = "Web-App"
  }
}

variable "aws_region" {
  description = "Region on which resources will be created"
  type        = string
  default     = "eu-west-2"
}

variable "az_name" {
  description = "Availability Zone name should be region defined in aws_region variable"
  type        = string
  default     = "eu-west-2a"
}

variable "inst_type" {
  description = "Multiple instance types"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Ubuntu Server 22.04 LTS Free tier image"
  type        = string
  default     = "ami-0fb391cce7a602d1f"

}
