variable "ip-address" {
    type = string
    description = "ip-адрес"
    default = "192.168.0.1"
    validation {
      condition = can(cidrhost("${var.ip-address}/32",0))
      error_message = "Неверный формат ip-адреса"
    }
}

variable "ip-list" {
    type = list(string)
    description = "список ip-адресов"
    default =  ["192.168.0.1", "1.1.1.1", "127.0.0.1"]
    validation {
      condition = alltrue([for ip in var.ip-list : can(cidrhost("${ip}/32", 0))])
      error_message = "В списке присутствуют ip-адреса неверного формата"
    }
}
