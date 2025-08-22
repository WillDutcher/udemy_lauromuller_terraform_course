module "path" {
  source = "./modules/path"
}

output "root" {
  value = module.path.root
}

output "module" {
  value = module.path.module
}