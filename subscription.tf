resource "aws_sns_topic_subscription" "this" {
  for_each = var.urls

  topic_arn = local.topic_arn
  protocol  = "https"
  endpoint  = replace(each.key, "/{{\\s*NULLSTONE_ENV\\s*}}/", local.env_name)
}
