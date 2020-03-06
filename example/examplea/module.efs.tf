module "efs" {
  source      = "../../"
  common_tags = var.common_tags
  mounts      = var.mounts
}
