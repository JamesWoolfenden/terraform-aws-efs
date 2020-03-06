output "sharedstore" {
  description = ""
  value       = module.efs.sharedstore
}

output "mount" {
  description = ""
  value       = module.efs.mount
}
