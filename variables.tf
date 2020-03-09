variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "efs" {
  description = "To create a shared file share"
  type        = map

  default = {
    creation_token                  = "my-product"
    transition_to_ia                = "AFTER_30_DAYS"
    kms_key_id                      = ""
    encrypted                       = true
    performance_mode                = "generalPurpose"
    provisioned_throughput_in_mibps = 0
    throughput_mode                 = "bursting"
  }
}

variable "mounts" {
  type        = list
  description = "Subnets to create mount points for"
  default = [{
    subnet_id       = ""
    ip_address      = ""
    security_groups = []
  }]
}
