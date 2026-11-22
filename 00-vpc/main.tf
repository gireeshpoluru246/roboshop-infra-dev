module "vpc" {
    #source = "../../terraform-aws-vpc"
    source = "git::https://github.com/gireeshpoluru246/terraform-aws-vpc-module.git?ref=main"
    project = var.project
    environment = var.environment
}