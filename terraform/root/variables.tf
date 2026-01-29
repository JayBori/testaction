variable "rg_name" {
    type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "vnet_addressspace" {
  type = list(string)
}

variable "snet_name" {
  type = string
}

variable "snet_address" {
  type = list(string)
}

variable "vm_name" {
  type = string
}

variable "vm_sku" {
  type = string
}

variable "vm_adminuser" {
  type = string
}

variable "vm_adminpassword" {
  type = string
}
