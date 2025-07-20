

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}
resource "azurerm_storage_account" "example" {
  name                     = var.name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
variable "name" {
  type = string
  default = "rdcfdfvfgffg"
  
}
resource "azurerm_resource_group" "example" {
  name     = "example1"
  location = "West Europe"
}