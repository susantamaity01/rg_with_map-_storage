resource "azurerm_resource_group" "rg" {

  for_each = var.resource05

  name     = each.key
  location = each.value
}
resource "azurerm_storage_account" "storage" {

  for_each = var.storage07

  name                     = each.value.name
  location                 = each.value.location

  # IMPLICIT DEPENDENCY
  resource_group_name = azurerm_resource_group.rg[each.value.resource_group].name

  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}