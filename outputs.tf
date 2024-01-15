output "boundary_cred_store_username" {
  value = boundary_credential_username_password.example_username_password.username
}

output "boundary_cred_store_password" {
  value = nonsensitive(boundary_credential_username_password.example_username_password.password)
}

output "boundary_read_only_user" {
  value = boundary_user.readonlyuser.name
}

output "boundary_read_only_role" {
  value = boundary_role.readonlyrole.name
}

