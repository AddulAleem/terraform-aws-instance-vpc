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

variable "ami_name" {
  description = "Latest AMI ID on eu-west-2"
  type        = string
  default     = "ami-0fb391cce7a602d1f"
}

variable "inst_type" {
  description = "Instance type used to launch EC2 Instance"
  type        = string
  default     = "t2.micro"
}

variable "inst_count" {
  description = "No of EC2 instance that need to launched"
  type        = string
  default     = "1"
}
