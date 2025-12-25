rg = {

  rg1 = {
    name     = "rgsushis2"
    location = "eastus"
  }
}

stgs = {
  stg1 = {
    name                     = "stgsudhisl01"
    resource_group_name      = "rgsushis2"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}


vnet = {
  vnet1 = {
    vnet_name           = "mynet"
    vnet_location       = "eastus"
    resource_group_name = "rgsushis2"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}


subnet = {
  subnet1 = {
    sub_name             = "mysubnet"
    resource_group_name  = "rgsushis2"
    sub_address_prefixes = ["10.0.1.0/24"]
    vnet_name            = "mynet"
  }
}
