resource "azurerm_linux_virtual_machine" "vm" {
    for_each = var.linux_virtual_machine
  name                  = each.value.name
  location              = each.value.location
  resource_group_name   = each.value.resource_group_name
  size                  = each.value.size

  network_interface_ids = [
    var.nic_ids[each.value.nic_key]
  ]

  admin_username = data.azurerm_key_vault_secret.vm_username.value
  admin_password = data.azurerm_key_vault_secret.vm_password.value

 os_disk {
  name                 = "${each.value.name}-osdisk"
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}


  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}