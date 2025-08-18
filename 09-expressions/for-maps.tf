locals {
  doubles_map = { for key, value in var.numbers_map : key => value * 2 }
  evens_map   = { for key, value in var.numbers_map : key => value if value % 2 == 0 }
}