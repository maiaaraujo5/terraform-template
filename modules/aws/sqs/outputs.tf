output "arn" {
  value = aws_sqs_queue.sqs_queue.arn
}

output "dlq_arn" {
  value = aws_sqs_queue.sqs_queue_dlq.arn
}