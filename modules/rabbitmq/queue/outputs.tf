output "queue_name" {
  value = rabbitmq_queue.queue.name
}

output "dlq_queue_name" {
  value = rabbitmq_queue.dlq.name
}