resource "aws_organizations_organization" "root" {
}

resource "aws_organizations_account" "users" {
  for_each = var.accounts
  name      = "${var.name}-${each.value}"
  email     = "admin+${each.value}@${var.email_domain}"
  role_name = "Admin"
}

resource "aws_organizations_account" "users" {
  for_each = var.accounts
  name      = "${var.name}-${each.value}"
  email     = "admin+${each.value}@${var.email_domain}"
  role_name = "Admin"
}
