variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "efs" {
  description = "To create a shared file share"
  type = object({
    creation_token                  = string
    transition_to_ia                = string
    kms_key_id                      = string
    encrypted                       = bool
    performance_mode                = string
    provisioned_throughput_in_mibps = number
    throughput_mode                 = string
  })
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
