resource "azurerm_data_factory" "adfdev1" {
  name                = "adfde90280bmv"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
}
