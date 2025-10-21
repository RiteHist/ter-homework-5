output "subnet_info" {
  value = {
    name = yandex_vpc_subnet.vpc-subnet.name
    cidr = yandex_vpc_subnet.vpc-subnet.v4_cidr_blocks
    zone = yandex_vpc_subnet.vpc-subnet.zone
    id = yandex_vpc_subnet.vpc-subnet.id
  }
}
output "network_info" {
    value = {
        name = yandex_vpc_network.vpc-network.name
        id = yandex_vpc_network.vpc-network.id
    }
}