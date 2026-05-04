module "efs" {
  source      = "../../"
  common_tags = var.common_tags
  mounts      = var.mounts
  efs = {
    #checkov:skip=CKV_SECRET_6:required
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
  # checkov:skip=CKV2_AWS_64: For example only, key policy managed via IAM
  enable_key_rotation = true
}
