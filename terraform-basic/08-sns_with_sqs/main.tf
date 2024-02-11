provider "aws" {
  region = "us-east-1"
}


resource "aws_sns_topic" "user_updates010" {
  name = "user-updates-topic010"
  arn = "arn:aws:sns:us-east-1:876801740533:${aws_sns_topic.name}"
}

resource "aws_sqs_queue" "user_updates_queue010" {
  name = "user_updates_queue010"
  arn = "arn:aws:sqs:us-east-1:876801740533:${aws_sqs_queue.name}"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.user_updates010.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.user_updates_queue010.arn
}