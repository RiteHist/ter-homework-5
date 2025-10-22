module "analytics-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=7020e1fc51e53485c9fc06bffff199970cb68234"
  env_name       = var.env_names[0]
  network_id     = module.vpc.network_info.id
  subnet_zones   = [module.vpc.subnet_info.zone]
  subnet_ids     = [module.vpc.subnet_info.id]
  instance_name  = var.remote_vm_names[0]
  instance_count = var.remote_vm_params[0].count
  image_family   = var.remote_vm_params[0].image_family
  public_ip      = var.remote_vm_params[0].public_ip

  labels = {
    project = var.project_names[0]
  }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered #Для демонстрации №3
    serial-port-enable = var.serial_port_enable
  }

}

module "marketing-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=7020e1fc51e53485c9fc06bffff199970cb68234"
  env_name       = var.env_names[1]
  network_id     = module.vpc.network_info.id
  subnet_zones   = [module.vpc.subnet_info.zone]
  subnet_ids     = [module.vpc.subnet_info.id]
  instance_name  = var.remote_vm_names[0]
  instance_count = var.remote_vm_params[0].count
  image_family   = var.remote_vm_params[0].image_family
  public_ip      = var.remote_vm_params[0].public_ip
  labels = {
    project = var.project_names[1]
  }
  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.serial_port_enable
  }

}

data "template_file" "cloudinit" {
  template = file("./cloud-init.yml")

  vars = {
    vm_username = var.vm_username
    ssh_pub_keys = jsonencode(local.ssh_pub_keys)
    packages = jsonencode(var.packages)
  }
}