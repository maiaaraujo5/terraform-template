resource "google_compute_instance" "instance" {
  name         = var.name
  machine_type = var.machine_type
  allow_stopping_for_update = true
  tags         = var.tags
  zone         = var.region
  boot_disk {
    source = google_compute_disk.disk.name
  }
  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.static-ip-address.address
    }
  }
}

resource "google_compute_disk" "disk" {
  name  = format("%s-%s", var.name, "disk")
  type  = var.disk_type
  size  = var.disk_size
  image = var.disk_image
  zone = var.region
}

resource "google_compute_address" "static-ip-address" {
  name = format("%s-%s", var.name, "static-ip")
}