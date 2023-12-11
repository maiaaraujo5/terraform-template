variable "region" {
  type = string
}

variable "project" {
  type = string
}

variable "name" {
  type        = string
  default     = "instance-1"
  description = "name of compute engine instance"
}

variable "machine_type" {
  type        = string
  default     = "e2-micro"
  description = "instance type of compute engine instance"
}

variable "disk_type" {
  type        = string
  default     = "pd-standard"
  description = "disk type"
}

variable "disk_image" {
  type        = string
  default     = "debian-11-bullseye-v20220719"
  description = "disk image"
}

variable "disk_labels" {
  type = map(string)
}

variable "disk_zone" {
  type = string
}

variable "disk_size" {
  type    = number
  default = 30
}

variable "tags" {
  type = list(string)
}

variable "tcp-ports" {
  type = list(string)
  description = "tcp ports to add for firewall rule"
}