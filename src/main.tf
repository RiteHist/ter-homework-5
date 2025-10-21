module "vpc" {
  source = "./vpc"

  env = var.env_names[0]
  zone = var.zones[0]
  cidr = [var.cidr[0]]
}
