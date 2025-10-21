variable "env" {
    type = string
    description = "Name of the environment"
}

variable "zone" {
    type = string
    description = "Availability zone"
}

variable "cidr" {
    type = list(string)
    description = "CIDR for subnet"
}