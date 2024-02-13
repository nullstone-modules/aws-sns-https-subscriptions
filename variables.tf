variable "app_metadata" {
  description = <<EOF
Nullstone automatically injects metadata from the app module into this module through this variable.
This variable is a reserved variable for capabilities.
EOF

  type    = map(string)
  default = {}
}

variable "endpoint_path" {
  description = "The endpoint path to subscribe to the SNS topic. This path will be concatenated with app's public url to form the full url."
  type        = string
}
