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
variable "rg_name" { 
    type = string
}
variable "location" {
    type = string
}