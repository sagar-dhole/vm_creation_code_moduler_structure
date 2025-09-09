data "azurerm_key_vault" "keyvault" {
  name                = "mykeyvault"
  resource_group_name = "app-resource-group-1"
}

