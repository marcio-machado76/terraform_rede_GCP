output "network_vpc" {
  description = "Id Network vpc"
  value       = google_compute_network.vpc.name
}

output "public_sub" {
  description = "Id das subnets publicas"
  value = google_compute_subnetwork.public_subnet[*].name
}

output "private_sub" {
  description = "Id das subnets privadas"
  value = google_compute_subnetwork.private_subnet[*].name
}