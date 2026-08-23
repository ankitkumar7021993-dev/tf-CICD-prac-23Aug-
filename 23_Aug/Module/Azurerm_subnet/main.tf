resource "azurerm_subnet" "subnet" {
  for_each             = var.svnet
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  address_prefixes     = each.value.address_prefixes
  virtual_network_name = each.value.virtual_network_name

}