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

/* variable "mongodb_sg_name" {
    default = "mongodb"
}

variable "redis_sg_name" {
    default = "redis"
} */

variable "sg_names" {
    default = [
        "mongodb", "redis", "mysql", "rabbitmq",
        "catalogue", "user", "cart", "shipping", "payment",
        "backend_alb",
        "frontend",
        "frontend_alb",
        "bastion", "vpn"
    ]
}