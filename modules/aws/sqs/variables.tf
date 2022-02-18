variable "name" {
  type = string
}

variable "create_dlq" {
  type = bool
  default = false
}

variable "color" {
  type = string
}

variable "fifo_queue" {
  type    = bool
  default = false
}

variable "content_based_deduplication" {
  type    = bool
  default = false
}

variable "delay_seconds" {
  type    = number
  default = 90
}

variable "max_message_size" {
  type    = number
  default = 2048
}

variable "message_retention_seconds" {
  type    = number
  default = 86400
}

variable "receive_wait_time_seconds" {
  type    = number
  default = 10
}

variable "tags" {
  type = map(string)
}