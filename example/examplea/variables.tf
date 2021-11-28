variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}


variable "mounts" {
  type        = list(any)
  description = "Subnets to create mount points for"
  default = [{
    subnet_id       = ""
    ip_address      = ""
    security_groups = []
  }]
}
