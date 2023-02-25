output "instance_id" {
  value = google_compute_instance.instance.instance_id
}

output "disk_id" {
  value = google_compute_disk.disk.id
}
