# refer to an existing resource group
data "azurerm_resource_group" "runnerRG" {
  name = "Gitlab_runner_test"
}