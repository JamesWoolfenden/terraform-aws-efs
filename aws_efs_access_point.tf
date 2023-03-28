resource "aws_efs_access_point" "pike" {
  file_system_id = aws_efs_file_system.sharedstore.id
  root_directory {
    path=var.root_path
  }
  posix_user {
    gid = var.posix_user.gid
    uid = var.posix_user.uid
  }
}

variable "root_path" {
    type=string
    default = "/data"
}

variable "posix_user" {
  type=object({
    gid=number
    uid=number
  })
  default = {
    gid = -2
    uid = -2
  }
}