resource "azurerm_key_vault_secret" "vm_username" {
  name         = "username"
  value        = "dudu1"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

resource "azurerm_key_vault_secret" "vm_password" {
  name         = "vm-admin-password"
  value        = "Bubu@12345##"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}