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


variable "rg_name" { 
    type = string
}
variable "location" {
    type = string
}

variable "subnet_id" {
  type = string
}