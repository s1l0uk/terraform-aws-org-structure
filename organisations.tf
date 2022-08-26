resource "aws_organizations_organization" "root" {
}

resource "aws_organizations_account" "standard" {
  for_each = var.accounts
  name      = "${var.name}-${each.value}"
  email     = "admin+${each.value}@${var.email_domain}"
  role_name = "Admin"
}

resource "aws_organizations_account" "project" {
  for_each = var.accounts
  name      = "${var.name}-${each.value}"
  email     = "admin+${each.value}@${var.email_domain}"
  role_name = "Admin"
}

module "standard_configure_iam" {
  for_each = aws_organizations_account.standard
  source = "./modules/"
  provider "aws" {
    assume_role {
      role_arn = "arn:aws:iam::${each.value.id}:role/Admin"
    }
    alias  = each.value.id
    region = var.region
  }
}

module "project_configure_iam" {
  for_each = aws_organizations_account.standard
  source = "./modules/"
  provider "aws" {
    assume_role {
      role_arn = "arn:aws:iam::${each.value.id}:role/Admin"
    }
    alias  = each.value.id
    region = var.region
  }
}
