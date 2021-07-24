resource "rabbitmq_permissions" "permissions" {
  user = var.username
  vhost = var.vhost_name
  permissions {
    configure = ".*"
    read = ".*"
    write = ".*"
  }
}

resource "rabbitmq_queue" "queue" {
  name = var.queue_name
  settings {
    durable = var.durable
    auto_delete = var.auto_delete
  }
}

resource "rabbitmq_queue" "dlq" {
  name = "${rabbitmq_queue.queue.name}.dlq"
  settings {
    durable = var.durable
    auto_delete = var.auto_delete
    arguments = {
      "dead-letter-exchange": var.queue_name
    }
  }
}

resource "rabbitmq_binding" "binding" {
  destination = rabbitmq_queue.queue.name
  destination_type = "queue"
  source = var.exchange_to_bind
  vhost = var.vhost_name
  routing_key = var.routing_key
}