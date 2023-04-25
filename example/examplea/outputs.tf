output "sharedstore" {
  description = ""
  value       = module.efs.sharedstore
}

output "mount" {
  description = ""
  value       = module.efs.mount
}

output "access_point" {
  value = module.efs.access_point
}
