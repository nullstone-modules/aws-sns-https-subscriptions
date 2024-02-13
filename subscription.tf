locals {
  https_endpoint = "${var.app_metadata["public_urls"][0]}/${var.endpoint_path}"
}

resource "aws_sns_topic_subscription" "this" {
  topic_arn = local.topic_arn
  protocol  = "https"
  endpoint  = local.https_endpoint
}
