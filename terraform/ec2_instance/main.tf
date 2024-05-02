terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~>3.0"
        }
    }
}

provider "aws" {
    region = "eu-west-1"
    profile = "muzi-terraform-rnd"
}

resource "aws_instance" "example" {
    ami = "ami-066897b8858c0f1ad"
    instance_type = "t2.micro"
}