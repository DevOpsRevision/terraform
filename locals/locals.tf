locals {
  ec2_tags = merge(
    var.common_tags,
    {
        environment = "dev"
        version = "1.0"
    }
  )

  final_name = "${var.domain_name}-${var.sg_tags}"
}
