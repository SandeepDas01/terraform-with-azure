resource "azurerm_search_service" "dev" {
  name                = "dev-resource"
  resource_group_name = azurerm_resource_group.myrg.name
  location            = azurerm_resource_group.myrg.location
  sku                 = "standard"
}