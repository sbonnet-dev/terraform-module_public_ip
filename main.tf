resource "azurerm_public_ip" "public_ip" {
  name = lower(format("%s%s%s", var.rg_type, var.environment, var.name))

  location            = var.location
  resource_group_name = var.rg_name

  allocation_method = "Static"

  tags = {
    project     = var.project
    environment = var.environment
    owner       = var.owner
  }
}