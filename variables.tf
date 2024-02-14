variable urls {
  description = "The list of URLs to be subscribed to the connected SNS topic"
  type        = set(string)
  default     = []
}
