terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = ">=1.1.10"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = ">=0.51.0"
    }
  }
}

provider "tfe" {}

provider "boundary" {
  # Configuration options
  addr                   = var.boundary_addr
  auth_method_login_name = var.boundary_admin_username
  auth_method_password   = var.boundary_admin_password
}

data "tfe_organization" "org_name" {
  name = var.hpl_tfc_organisation_name
}

# Create an organisation scope within global.
# The global scope can contain multiple org scopes
resource "boundary_scope" "org" {
  scope_id                 = "global"
  name                     = var.boundary_org_scope_name
  auto_create_default_role = true
  auto_create_admin_role   = true
}

/* Create a project scope within the organsiation
Each org can contain multiple projects and projects are used to hold
infrastructure-related resources
*/
resource "boundary_scope" "project" {
  name                     = var.boundary_project_scope_name
  scope_id                 = boundary_scope.org.id
  auto_create_admin_role   = true
  auto_create_default_role = true
}

//A native Boundary static credential store
resource "boundary_credential_store_static" "static_cred_store" {
  name        = "static_credential_store"
  description = "Boundary Static Credential Store"
  scope_id    = boundary_scope.project.id
}

resource "boundary_credential_username_password" "example_username_password" {
  credential_store_id = boundary_credential_store_static.static_cred_store.id
  password            = "examplepassword"
  username            = "exampleusername"
}

resource "boundary_user" "readonlyuser" {
    scope_id = boundary_scope.org.id
    name = "readonly"
    description = "An Example Read Only User"
}

resource "boundary_role" "readonlyrole" {
    scope_id = boundary_scope.org.id
    name = "readonly"
    description = "An Example Read Only Role"
    principal_ids = [boundary_user.readonlyuser.id]
    grant_strings = [ "id=*;type=*;actions=read" ]
}

//Variable set and Variables to facilitate the Boundary Self Managed Worker No-Code Module"
data "tfe_workspace" "boundary_config" {
  name = var.TFC_WORKSPACE_NAME
  organization = var.hpl_tfc_organisation_name
}

resource "tfe_variable_set" "boundary_worker_vs" {
  name         = "Boundary Self Managed Worker Variable Set"
  description  = "Variables Required for the Self Managed Worker No-Code Module"
  organization = data.tfe_organization.org_name.name
  global       = true
}

resource "tfe_variable" "boundary_org" {
  description     = "Boundary Org ID"
  category        = "terraform"
  key             = "org_id"
  value           = boundary_scope.org.id
  variable_set_id = tfe_variable_set.boundary_worker_vs.id
}

resource "tfe_variable" "boundary_project" {
  description     = "Boundary Project ID"
  category        = "terraform"
  key             = "project_id"
  value           = boundary_scope.project.id
  variable_set_id = tfe_variable_set.boundary_worker_vs.id
}

