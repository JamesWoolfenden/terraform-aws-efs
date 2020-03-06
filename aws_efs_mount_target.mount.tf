resource "aws_efs_mount_target" "mount" {
  count           = length(var.mounts)
  file_system_id  = aws_efs_file_system.sharedstore.id
  subnet_id       = element(var.mounts.*.subnet_id, count.index)
  ip_address      = element(var.mounts.*.ip_address, count.index)
  security_groups = element(var.mounts.*.security_groups, count.index)
}
