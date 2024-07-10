## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.internet_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.public_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.public_subnet_az1_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_subnet_az2_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_subnet_az3_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.private_app_subnet_az1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_app_subnet_az2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_app_subnet_az3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_data_subnet_az1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_data_subnet_az2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_data_subnet_az3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_az1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_az2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_az3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_availability_zones.available_zones](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_private_app_subnet_az1_cidr"></a> [private\_app\_subnet\_az1\_cidr](#input\_private\_app\_subnet\_az1\_cidr) | private subnet app resources in cidr AZ 1 | `string` | n/a | yes |
| <a name="input_private_app_subnet_az2_cidr"></a> [private\_app\_subnet\_az2\_cidr](#input\_private\_app\_subnet\_az2\_cidr) | private subnet for app resources in cidr AZ 2 | `string` | n/a | yes |
| <a name="input_private_app_subnet_az3_cidr"></a> [private\_app\_subnet\_az3\_cidr](#input\_private\_app\_subnet\_az3\_cidr) | private subnet for app resources in cidr AZ 3 | `string` | n/a | yes |
| <a name="input_private_data_subnet_az1_cidr"></a> [private\_data\_subnet\_az1\_cidr](#input\_private\_data\_subnet\_az1\_cidr) | private subnet for data resources in AZ 1 | `string` | n/a | yes |
| <a name="input_private_data_subnet_az2_cidr"></a> [private\_data\_subnet\_az2\_cidr](#input\_private\_data\_subnet\_az2\_cidr) | private subnet for data resources in AZ 2 | `string` | n/a | yes |
| <a name="input_private_data_subnet_az3_cidr"></a> [private\_data\_subnet\_az3\_cidr](#input\_private\_data\_subnet\_az3\_cidr) | private subnet for data resources in AZ 3 | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | the project name chosen | `string` | n/a | yes |
| <a name="input_public_subnet_az1_cidr"></a> [public\_subnet\_az1\_cidr](#input\_public\_subnet\_az1\_cidr) | public subnet for first AZ | `string` | n/a | yes |
| <a name="input_public_subnet_az2_cidr"></a> [public\_subnet\_az2\_cidr](#input\_public\_subnet\_az2\_cidr) | public subnet for second AZ | `string` | n/a | yes |
| <a name="input_public_subnet_az3_cidr"></a> [public\_subnet\_az3\_cidr](#input\_public\_subnet\_az3\_cidr) | public subnet for third AZ | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | in which region the resources are deployed | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | cidr block of the vpc | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internet_gateway"></a> [internet\_gateway](#output\_internet\_gateway) | n/a |
| <a name="output_private_app_subnet_az1_id"></a> [private\_app\_subnet\_az1\_id](#output\_private\_app\_subnet\_az1\_id) | n/a |
| <a name="output_private_app_subnet_az2_id"></a> [private\_app\_subnet\_az2\_id](#output\_private\_app\_subnet\_az2\_id) | n/a |
| <a name="output_private_app_subnet_az3_id"></a> [private\_app\_subnet\_az3\_id](#output\_private\_app\_subnet\_az3\_id) | n/a |
| <a name="output_private_data_subnet_az1_id"></a> [private\_data\_subnet\_az1\_id](#output\_private\_data\_subnet\_az1\_id) | n/a |
| <a name="output_private_data_subnet_az2_id"></a> [private\_data\_subnet\_az2\_id](#output\_private\_data\_subnet\_az2\_id) | n/a |
| <a name="output_private_data_subnet_az3_id"></a> [private\_data\_subnet\_az3\_id](#output\_private\_data\_subnet\_az3\_id) | n/a |
| <a name="output_project_name"></a> [project\_name](#output\_project\_name) | n/a |
| <a name="output_public_subnet_az1_id"></a> [public\_subnet\_az1\_id](#output\_public\_subnet\_az1\_id) | n/a |
| <a name="output_public_subnet_az2_id"></a> [public\_subnet\_az2\_id](#output\_public\_subnet\_az2\_id) | n/a |
| <a name="output_public_subnet_az3_id"></a> [public\_subnet\_az3\_id](#output\_public\_subnet\_az3\_id) | n/a |
| <a name="output_region"></a> [region](#output\_region) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
