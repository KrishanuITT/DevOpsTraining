variable "azurerm_location" {
  default = "Central India"
  type = string
}

variable "virtual_network_address" {
  default = "10.0.0.0/16"
  type = string
}
variable "subnet_prefix" {
  default = "10.0.1.0/24"
  type = string
}