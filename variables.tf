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
  default     = "./.auth/meu_acesso.json"
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

variable "ports_tcp_udp" {
  description = "Portas de entrada do security group tcp e/ou udp"

  type = map(object({ protocol = string, ports = list(string) }))
  default = {
    tcp = { protocol = "tcp", ports = ["22", "80", "443", "1024-65535"] }
    udp = { protocol = "udp", ports = ["0"] }
  }
}
