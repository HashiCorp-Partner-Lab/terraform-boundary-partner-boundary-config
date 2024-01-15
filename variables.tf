variable "boundary_org_scope_name" {
  type        = string
  description = "Name of the Org Scope"
}

variable "boundary_project_scope_name" {
  type        = string
  description = "Name of the Project Scope"
}

variable "boundary_addr" {
  type        = string
  description = "Boundary URL - This information is stored within a Variable Set"
  default     = ""
}

variable "boundary_admin_username" {
  type        = string
  description = "Boundary Admin UI Login Name"
  default     = "admin"
}

variable "boundary_admin_password" {
  type        = string
  description = "Boundary Admin UI Password"
  default = ""
}

variable "hpl_tfc_organisation_name" {
  type        = string
  description = "TFC Org Name"
  default     = "TFC Org"
}

variable "TFC_WORKSPACE_NAME" {
  type = string
  description = "The name of the workspaces used in this run"
  default = null
}