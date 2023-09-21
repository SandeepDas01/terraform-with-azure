
resource "azurerm_storage_account" "st" {
  name                     = "defy89geaccount"
  resource_group_name      = azurerm_resource_group.myrg.name
  location                 = azurerm_resource_group.myrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "arch" {
  name                  = "arch"
  storage_account_name  = azurerm_storage_account.st.name
  container_access_type = "container"
}
