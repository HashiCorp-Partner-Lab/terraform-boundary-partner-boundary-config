<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_boundary"></a> [boundary](#requirement\_boundary) | >=1.1.10 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >=0.51.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_boundary"></a> [boundary](#provider\_boundary) | 1.1.11 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.51.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [boundary_credential_store_static.static_cred_store](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/credential_store_static) | resource |
| [boundary_credential_username_password.example_username_password](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/credential_username_password) | resource |
| [boundary_role.readonlyrole](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/role) | resource |
| [boundary_scope.org](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/scope) | resource |
| [boundary_scope.project](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/scope) | resource |
| [boundary_user.readonlyuser](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/user) | resource |
| [tfe_variable.boundary_org](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.boundary_project](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable_set.boundary_worker_vs](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |
| [tfe_organization.org_name](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boundary_addr"></a> [boundary\_addr](#input\_boundary\_addr) | Boundary URL - This information is stored within a Variable Set | `string` | `""` | no |
| <a name="input_boundary_admin_password"></a> [boundary\_admin\_password](#input\_boundary\_admin\_password) | Boundary Admin UI Password | `string` | `""` | no |
| <a name="input_boundary_admin_username"></a> [boundary\_admin\_username](#input\_boundary\_admin\_username) | Boundary Admin UI Login Name | `string` | `"admin"` | no |
| <a name="input_boundary_org_name"></a> [boundary\_org\_name](#input\_boundary\_org\_name) | Name of the Org Scope | `string` | n/a | yes |
| <a name="input_boundary_project_name"></a> [boundary\_project\_name](#input\_boundary\_project\_name) | Name of the Project Scope | `string` | n/a | yes |
| <a name="input_hpl_tfc_organisation_name"></a> [hpl\_tfc\_organisation\_name](#input\_hpl\_tfc\_organisation\_name) | TFC Org Name | `string` | `"TFC Org"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->