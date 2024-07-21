variable "rg_name" {
 description = "This is a variable of type string"
 type        = string
 #default     = "shivam4"
}

resource "azurerm_resource_group" "shivam5" {
name     = var.rg_name
location = "West Europe"
}