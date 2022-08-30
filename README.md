# terraform-aws-org-structure

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| project\_configure\_iam | ./modules/ | n/a |
| standard\_configure\_iam | ./modules/ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.project](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |
| [aws_organizations_account.standard](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |
| [aws_organizations_organization.root](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| default\_accounts | [Optional] A List of default accounts. | `list(string)` | <pre>[<br>  "logging",<br>  "billing"<br>]</pre> | no |
| environments | [Required] A List of Environments for each Product. | `string` | <pre>[<br>  "lab",<br>  "dev",<br>  "prod"<br>]</pre> | no |
| project\_accounts | [Required] A List of Project Accounts to host your Projects. | `list(string)` | <pre>[<br>  "projectx"<br>]</pre> | no |
| region | [Optional] The Master Region to operate in. | `list(string)` | <pre>[<br>  "projectx"<br>]</pre> | no |
| tags | [Optional] Extra Tags to add to your stack. | `map` | <pre>{<br>  "BU": "cloud"<br>}</pre> | no |

## Outputs

No outputs.

For further information on the project consult [http://devsecopz.blogspot.com/]
