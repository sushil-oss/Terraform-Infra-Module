resource "azurerm_subnet" "sub" {
    for_each = var.subnet
    name = each.value.sub_name
    resource_group_name = each.value.resource_group_name
    address_prefixes = each.value.sub_address_prefixes
    virtual_network_name = each.value.vnet_name
}