module "efs" {
  source      = "../../"
  common_tags = var.common_tags
  mounts      = var.mounts
  efs = {
    creation_token                  = "my-product"
    transition_to_ia                = "AFTER_30_DAYS"
    kms_key_id                      = aws_kms_key.example.arn
    encrypted                       = true
    performance_mode                = "generalPurpose"
    provisioned_throughput_in_mibps = 0
    throughput_mode                 = "bursting"
  }
}

resource "aws_kms_key" "example" {
  enable_key_rotation = true
}
