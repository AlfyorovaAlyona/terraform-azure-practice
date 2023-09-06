# create a virtual network
resource "azurerm_virtual_network" "runner_vnet" {
  name                = "runnerVM-vnet"
  location            = azurerm_resource_group.myRunnerRG.location
  resource_group_name = azurerm_resource_group.myRunnerRG.name
  address_space       = ["10.0.0.0/16"]
}
# create a subnet in virtual network
resource "azurerm_subnet" "runner_subnet" {
  name = "runnerVM-subnet"
  resource_group_name = azurerm_resource_group.runnerRG
  virtual_network_name = azurerm_virtual_network.runner_vnet
  address_prefixes = [ "10.0.2.0/24" ]
}
