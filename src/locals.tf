locals {
    ssh_pub_keys = [for path in var.ssh_pub_key_paths : file(path)]
}