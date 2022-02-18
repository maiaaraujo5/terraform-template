resource "aws_sqs_queue" "sqs_queue" {
  name                      = var.name
  delay_seconds             = var.delay_seconds
  max_message_size          = var.max_message_size
  message_retention_seconds = var.message_retention_seconds
  receive_wait_time_seconds = var.receive_wait_time_seconds
  fifo_queue                = var.fifo_queue
  tags                      = var.tags
}

resource "aws_sqs_queue" "sqs_queue_dlq" {
  count                     = var.create_dlq ? 1 : 0
  name                      = join("_", [var.name, "dlq"])
  delay_seconds             = var.delay_seconds
  max_message_size          = var.max_message_size
  message_retention_seconds = var.message_retention_seconds
  receive_wait_time_seconds = var.receive_wait_time_seconds
  fifo_queue                = var.fifo_queue
  tags                      = var.tags
}