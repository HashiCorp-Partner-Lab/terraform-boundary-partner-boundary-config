terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = ">=1.1.10"
    }
  }
}

provider "boundary" {
  # Configuration options
  addr                   = var.boundary_addr
  auth_method_login_name = var.boundary_admin_username
  auth_method_password   = var.boundary_admin_password
}

# Create an organisation scope within global.
# The global scope can contain multiple org scopes
resource "boundary_scope" "org" {
  scope_id                 = "global"
  name                     = var.boundary_org_name
  auto_create_default_role = true
  auto_create_admin_role   = true
}

/* Create a project scope within the organsiation
Each org can contain multiple projects and projects are used to hold
infrastructure-related resources
*/
resource "boundary_scope" "project" {
  name                     = var.boundary_project_name
  scope_id                 = boundary_scope.org.id
  auto_create_admin_role   = true
  auto_create_default_role = true
}
