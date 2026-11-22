variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "aws region"
}

variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}