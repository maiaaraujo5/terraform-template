resource "rabbitmq_permissions" "permissions" {
  user = var.username
  vhost = var.vhost_name
  permissions {
    configure = ".*"
    read = ".*"
    write = ".*"
  }
}

resource "rabbitmq_exchange" "exchange" {
  name = var.exchange_name
  vhost = rabbitmq_permissions.permissions.vhost
  settings {
    type = var.exchange_type
    durable = var.durable
    auto_delete = var.auto_delete
  }
}