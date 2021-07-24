variable "endpoint" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}

variable "vhost_name" {
  type = string
}

variable "queue_name" {
  type = string
}

variable "durable" {
  type = bool
  default = true
}

variable "auto_delete" {
  type = bool
  default = false
}

variable "exchange_to_bind" {
  type = string
  default = ""
}

variable "routing_key" {
  type = string
  default = "#"
}