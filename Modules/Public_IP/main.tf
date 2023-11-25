resource "azurerm_public_ip" "Public_IP" {
  for_each = var.public_ip
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
  sku = each.value.sku
}