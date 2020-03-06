output "sharedstore" {
  description = ""
  value       = aws_efs_file_system.sharedstore
}

output "mount" {
  description = ""
  value       = aws_efs_mount_target.mount
}
