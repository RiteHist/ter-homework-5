terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = "~>1.8.4"
}

resource "yandex_vpc_network" "vpc-network" {
    name = var.env
}

resource "yandex_vpc_subnet" "vpc-subnet" {
    name = "${var.env}-subnet"
    zone = var.zone
    network_id = yandex_vpc_network.vpc-network.id
    v4_cidr_blocks = var.cidr
}