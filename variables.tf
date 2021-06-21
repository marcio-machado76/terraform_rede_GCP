variable "gcp_region" {
  description = "Região onde serão criados os recursos"
  type        = string
  default     = "us-east1"
}


variable "project" {
  description = "Nome do Projeto"
  type        = string
  default     = "mentoria-iac"
}


variable "credential" {
  description = "Credeciais project gcp"
  type        = string
  default     = "/path/credentials ?"
}


variable "name_vpc" {
  description = "Nome da vpc"
  type        = string
  default     = "vpc-mentoria"
}


variable "subnet_count" {
  description = "Quantidade de subnets publicas e privadas"
  type        = number
  default     = 2
}


variable "vpc_cidrblock" {
  description = "Range ip da VPC"
  type        = string
  default     = "10.10.0.0/16"
}


variable "tcp_ports" {
  description = "portas tcp"
  type        = list(string)
  default     = ["22", "80", "8080", "1024-65535"]
}


variable "udp_ports" {
  description = "portas udp"
  type        = list(string)
  default     = ["0"]
}
