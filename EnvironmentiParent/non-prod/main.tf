module "rg1" {
  source = "../../Resource_group"
  rg     = var.rg

}

module "storage" {
  depends_on = [ module.rg1 ]
  source = "../../Storage_account"
  stgs = var.stgs
  
}


module "vnet" {
  depends_on = [ module.rg1 ]
  source = "../../virtual_network"
  vnet = var.vnet
}

module "sunnet" {
  depends_on = [ module.vnet ]
  source = "../../subnet_IP"
  subnet = var.subnet
}