###cloud vars
variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "env_names" {
  type = list(string)
  default = ["develop", "stage"]
}

variable "zones" {
  type = list(string)
  default = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]
}

variable "cidr" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "remote_vm_names" {
  type = list(string)
  default = ["web"]
}

variable "remote_vm_params" {
  type = list(object({
    count = number
    image_family = string
    public_ip = bool
  }))
}

variable "project_names" {
  type = list(string)
  default = ["analytics", "marketing"]
}

variable "ssh_pub_key_paths" {
  type = list(string)
  default = ["~/.ssh/id_ed25519.pub"]
}

variable "packages" {
  type = list(string)
  default = ["nginx"]
}

variable "vm_username" {
  type = string
}

variable "serial_port_enable" {
  type = number
  default = 1
}