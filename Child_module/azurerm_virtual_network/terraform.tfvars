virtual_network = {
  "vnet1" = {
    name                = "app-network-1"
    address_space       = ["10.0.0.0/16"]
    location            = "Japan West"
    resource_group_name = "app-resource-group-1"
    dns_servers         = [ "10.0.0.4", "10.0.0.5" ]
  }
}