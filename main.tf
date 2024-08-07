
resource "aws_sns_topic" "ekong" {
  name = var.topic_uyai
  tags = {
    team = var.team
  }
}

resource "aws_sns_topic_subscription" "email-target" {
  topic_arn = aws_sns_topic.ekong.arn
  protocol  = var.protocol_type
  endpoint  = var.end_point # Replace with the desired email address
}


