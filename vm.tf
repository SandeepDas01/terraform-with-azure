#virtual machine
resource "azurerm_windows_virtual_machine" "example" {
  name                = "Dev-Machine"
  resource_group_name = azurerm_resource_group.myrg.name
  location            = azurerm_resource_group.myrg.location
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  admin_password      = "Admin@900"
  network_interface_ids = [
    azurerm_network_interface.myvmnic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

