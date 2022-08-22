# terraform-aws-estate

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_organization.root](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| availability\_zones | [Optional] A list of Availability zones to operate in. | `list(string)` | <pre>[<br>  "a",<br>  "b",<br>  "c"<br>]</pre> | no |
| enable\_private\_internet\_access | [Optional] Should non-public instance be able to access the Internet via a NAT instance. | `bool` | `true` | no |
| name | [Optional] The root name for the Project. | `string` | `"Awesome Project!"` | no |
| network\_bits | [Optional] The number of network bits to be allocated | `number` | `8` | no |
| network\_cidr\_range | [Optional] The Primary Region to run operations and build within. | `string` | `"10.0.0.0/8"` | no |
| region | [Required] The Region to run operations and build within. | `string` | `"eu-west-1"` | no |
| tags | [Optional] Extra Tags to add to your stack. | `map` | <pre>{<br>  "enviroment": "alpha"<br>}</pre> | no |
| tiers | [Optional] How many uniform tiers to create, use 'public' to create a public tier. | `list(string)` | <pre>[<br>  "public",<br>  "data",<br>  "mid"<br>]</pre> | no |

## Outputs

No outputs.
