## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_boundary"></a> [boundary](#requirement\_boundary) | >=1.1.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_boundary"></a> [boundary](#provider\_boundary) | 1.1.11 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [boundary_scope.org](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/scope) | resource |
| [boundary_scope.project](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/scope) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boundary_addr"></a> [boundary\_addr](#input\_boundary\_addr) | Boundary URL - This information is stored within a Variable Set | `string` | `""` | no |
| <a name="input_boundary_admin_password"></a> [boundary\_admin\_password](#input\_boundary\_admin\_password) | Boundary Admin UI Password - This informaton is stored within a Variable Set | `string` | n/a | yes |
| <a name="input_boundary_admin_username"></a> [boundary\_admin\_username](#input\_boundary\_admin\_username) | Boundary Admin UI Login Name - This information is stored within a Variable Set | `string` | `"admin"` | no |
| <a name="input_boundary_org_name"></a> [boundary\_org\_name](#input\_boundary\_org\_name) | Name of the Org Scope | `string` | n/a | yes |
| <a name="input_boundary_project_name"></a> [boundary\_project\_name](#input\_boundary\_project\_name) | Name of the Project Scope | `string` | n/a | yes |

## Outputs

No outputs.
