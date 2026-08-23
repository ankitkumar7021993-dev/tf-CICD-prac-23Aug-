dev-rg = {
  rg1 = {
    name     = "ankur-rg"
    location = "eastus"
  }
  rg2 = {
    name     = "deepak-rg"
    location = "eastus"
  }
}

dev-stg = {
  stg1 = {
    name                     = "ankur1234567890"
    resource_group_name      = "ankur-rg"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

dev-vnet = {
  vnet1 = {
    name                = "vnet-ankit"
    resource_group_name = "ankur-rg"
    location            = "eastus"
    address_space       = ["10.0.0.0/16"]
  }
}

dev-svnet = {
  svnet1 = {
    name                 = "dk-subnet"
    resource_group_name  = "ankur-rg"
    address_prefixes     = ["10.0.1.0/24"]
    virtual_network_name = "vnet-ankit"

  }
}