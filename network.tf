####################################
# VPC e subnets publicas e privadas 
####################################

resource "google_compute_network" "vpc" {
  name                    = var.name_vpc
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
  mtu                     = 1460
}


resource "google_compute_subnetwork" "public_subnet" {
  count         = var.subnet_count
  name          = "subnet-pub-${count.index + 1}"
  ip_cidr_range = cidrsubnet(var.vpc_cidrblock, 8, (count.index + 1))
  network       = google_compute_network.vpc.name
  region        = local.region
}


resource "google_compute_subnetwork" "private_subnet" {
  count         = var.subnet_count
  name          = "subnet-priv-${count.index + 1}"
  ip_cidr_range = cidrsubnet(var.vpc_cidrblock, 8, var.subnet_count + (count.index + 1))
  network       = google_compute_network.vpc.name
  region        = local.region
}

resource "google_compute_firewall" "fw" {
  name    = "firewall-${local.project}"
  network = google_compute_network.vpc.id
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = var.tcp_ports
  }
  allow {
    protocol = "udp"
    ports    = var.udp_ports
  }
}