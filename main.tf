provider "aws" {
    region = var.region
}

resource "aws_organizations_organization" "root" {
}


