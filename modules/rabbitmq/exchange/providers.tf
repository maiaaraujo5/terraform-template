terraform {
   required_providers {
     rabbitmq = {
       source = "cyrilgdn/rabbitmq"
       version = "1.5.1"
     }
   }
 }

 provider "rabbitmq" {
   endpoint = var.endpoint
   username = var.username
   password = var.password
   insecure = true
 }