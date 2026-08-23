module "for_rg" {
  source = "../../Module/Azurerm_rg"
  rg     = var.dev-rg
}
module "for_stg" {
  source     = "../../Module/Azurerm_stg"
  stg        = var.dev-stg
  depends_on = [module.for_rg]
}
module "for_vnet" {
  source     = "../../Module/Azurerm_vnet"
  vnet       = var.dev-vnet
  depends_on = [module.for_rg]
}

module "for_subnet" {
  source     = "../../Module/Azurerm_subnet"
  svnet      = var.dev-svnet
  depends_on = [module.for_vnet]
}