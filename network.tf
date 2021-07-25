resource "google_compute_network" "vpc" {
  name                    = var.name_vpc
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
  mtu                     = 1460
}


resource "google_compute_subnetwork" "public_subnet" {
  count         = var.subnet_count
  name          = "subnet-publica-${count.index + 1}"
  ip_cidr_range = cidrsubnet(var.vpc_cidrblock, 8, (count.index + 1))
  network       = google_compute_network.vpc.id
  region        = local.region

}


resource "google_compute_subnetwork" "private_subnet" {
  count         = var.subnet_count
  name          = "subnet-privada-${count.index + 1}"
  ip_cidr_range = cidrsubnet(var.vpc_cidrblock, 8, var.subnet_count + (count.index + 1))
  network       = google_compute_network.vpc.id
  region        = local.region

}

resource "google_compute_firewall" "fw" {
  name    = "firewall-${local.project}"
  network = google_compute_network.vpc.id

  dynamic "allow" {
    for_each = var.ports_tcp_udp
    content {
      protocol = allow.value["protocol"]
      ports    = allow.value["ports"]
    }
  }
}
  
