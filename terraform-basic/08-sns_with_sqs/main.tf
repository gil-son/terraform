provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_sns_topic" "user_updates010" {
  name = "user-updates-topic010"
}

resource "aws_sqs_queue" "user_updates_queue010" {
  name = "user_updates_queue010"
  fifo_queue = false
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.user_updates010.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.user_updates_queue010.arn
}