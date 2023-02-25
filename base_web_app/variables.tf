
variable "aws_profile"{
    type = string
    description = "AWS Profile"
    default = "terraform-plural"
}

variable "aws_region" {
    type = string
    description = "AWS Region to use for Resources"
    default = "us-east-1"
}

variable "enable_dns_hostnames" {
    type = bool
    description = "Enable DNS Hostnames in VPC"
    default = true
}

variable "vpc_cidr_block" {
    type = string
    description = "Base CIDR Block for VPC"
    default = "10.0.0.0/16"
}

variable "vpc_subnets_cidr_block" {
    type = list(string)
    description = "CIDR Block for Subnet 1 in VPC"
    default = ["10.0.0.0/24", "10.0.0.1/24"]
}   

variable "map_public_ip_on_launch" {
    type = bool
    description = "Map a Public IP address for instances in this Subnet"
    default = true
}

variable "instance_type" {
    type = string
    description = "Type for EC2 Instance"
    default = "t2.micro"
}

variable "company" {
    type = string
    description = "Company name for resource tagging"
    default = "Globomantics"
}

variable "project" {
    type = string
    description = "Project name for billing resource tagging"
}

variable "billing_code" {
    type = string
    description = "Billing code for resource tagging"
}