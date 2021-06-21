## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 0.14 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.fw](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_network.vpc](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.private_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.public_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_credential"></a> [credential](#input\_credential) | Credeciais project gcp | `string` | `"/path/credentials ?"` | no |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | Região onde serão criados os recursos | `string` | `"us-east1"` | no |
| <a name="input_name_vpc"></a> [name\_vpc](#input\_name\_vpc) | Nome da vpc | `string` | `"vpc-mentoria"` | no |
| <a name="input_project"></a> [project](#input\_project) | Nome do Projeto | `string` | `"mentoria-iac"` | no |
| <a name="input_subnet_count"></a> [subnet\_count](#input\_subnet\_count) | Quantidade de subnets publicas e privadas | `number` | `2` | no |
| <a name="input_tcp_ports"></a> [tcp\_ports](#input\_tcp\_ports) | portas tcp | `list(string)` | <pre>[<br>  "22",<br>  "80",<br>  "8080",<br>  "1024-65535"<br>]</pre> | no |
| <a name="input_udp_ports"></a> [udp\_ports](#input\_udp\_ports) | portas udp | `list(string)` | <pre>[<br>  "0"<br>]</pre> | no |
| <a name="input_vpc_cidrblock"></a> [vpc\_cidrblock](#input\_vpc\_cidrblock) | Range ip da VPC | `string` | `"10.10.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_vpc"></a> [network\_vpc](#output\_network\_vpc) | Id Network vpc |
| <a name="output_private_sub"></a> [private\_sub](#output\_private\_sub) | Id das subnets privadas |
| <a name="output_public_sub"></a> [public\_sub](#output\_public\_sub) | Id das subnets publicas |
