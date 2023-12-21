variable "boundary_org_name" {
  type        = string
  description = "Name of the Org Scope"
}

variable "boundary_project_name" {
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
  description = "Boundary Admin UI Login Name - This information is stored within a Variable Set"
  default     = "admin"
}

variable "boundary_admin_password" {
  type        = string
  description = "Boundary Admin UI Password - This informaton is stored within a Variable Set"
}