resource "azurerm_resource_group" "sv2" {
  name     = "sv2"
  location = "West Europe"
}

resource "azurerm_storage_account" "shivam_storage" {
  name                     = "shivamstorage"
  resource_group_name      = azurerm_resource_group.sv2.name
  location                 = azurerm_resource_group.sv2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}