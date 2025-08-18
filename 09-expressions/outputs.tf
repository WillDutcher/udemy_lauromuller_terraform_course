output "operators" {
  value = {
    "math"       = local.math,
    "equality"   = local.equality,
    "comparison" = local.comparison,
    "logic"      = local.logic,
    "bool"       = local.bool
  }
}

output "doubles_numbers" {
  value = local.double_numbers
}

output "even_numbers" {
  value = local.even_numbers
}

output "first_names" {
  value = local.firstnames
}

output "full_names" {
  value = local.fullnames
}

output "doubles_map" {
  value = local.doubles_map
}

output "evens_map" {
  value = local.evens_map
}

output "users_map" {
  value = local.users_map
}

output "users_map2" {
  value = local.users_map2
}

output "user_to_output" {
  value = local.users_map2[var.user_to_output].roles
}

output "usernames" {
  value = local.usernames_from_map
}

output "firstnames_from_splat" {
  value = local.firstnames_from_splat
}

output "roles_from_splat" {
  value = local.roles_from_splat
}

output "roles_from_splat_with_values" {
  value = local.roles_from_splat_with_values
}