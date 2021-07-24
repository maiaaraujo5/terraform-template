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

variable "exchange_name" {
  type = string
}

variable "exchange_type" {
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