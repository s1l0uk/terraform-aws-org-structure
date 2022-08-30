## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_project_configure_iam"></a> [project\_configure\_iam](#module\_project\_configure\_iam) | ./modules/ | n/a |
| <a name="module_standard_configure_iam"></a> [standard\_configure\_iam](#module\_standard\_configure\_iam) | ./modules/ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.project](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |
| [aws_organizations_account.standard](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |
| [aws_organizations_organization.root](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_accounts"></a> [default\_accounts](#input\_default\_accounts) | [Optional] A List of default accounts. | `list(string)` | <pre>[<br>  "logging",<br>  "billing"<br>]</pre> | no |
| <a name="input_environments"></a> [environments](#input\_environments) | [Required] A List of Environments for each Product. | `string` | <pre>[<br>  "lab",<br>  "dev",<br>  "prod"<br>]</pre> | no |
| <a name="input_project_accounts"></a> [project\_accounts](#input\_project\_accounts) | [Required] A List of Project Accounts to host your Projects. | `list(string)` | <pre>[<br>  "projectx"<br>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | [Optional] The Master Region to operate in. | `list(string)` | <pre>[<br>  "projectx"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | [Optional] Extra Tags to add to your stack. | `map` | <pre>{<br>  "BU": "cloud"<br>}</pre> | no |

## Outputs

No outputs.
