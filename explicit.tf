resource "azurerm_resource_group" "sv3" {
  name     = "sv3"
  location = "West Europe"
}

resource "azurerm_storage_account" "shivam_storage1" {
  depends_on               = [azurerm_resource_group.sv3]
  name                     = "shivamstorage1"
  resource_group_name      = "sv3"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}