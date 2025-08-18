locals {
  name = "Will Dutcher"
  age  = 46
  my_object = {
    key1 = 10
    key2 = "my value"
  }
}

output "example1" {
  value = upper(local.name)
}

output "example2" {
  #   value = local.age * 2
  value = pow(local.age, 2)
}

output "example3" {
  value = file("${path.module}/users.yaml")
}

output "example4" {
  value = yamldecode(file("${path.module}/users.yaml")).users[0]
}

output "example5" {
  value = yamldecode(file("${path.module}/users.yaml")).users[*].name
}

output "example6" {
  value = yamlencode(local.my_object)
}

output "example7" {
  value = jsonencode(local.my_object)
}