variable "infra" {
    type = map(object({
         rg_name =string
        location = string
        vnet_name = string
        address_space = list(string)


    }))
    }
   

resource "azurerm_resource_group""rg"{
    for_each = var.infra
    name = each.value.rg_name
    location = each.value.location
}

resource "azurerm_virtual_network" "vnet" {
    for_each = var.infra
    name = each.value.vnet_name
    location = each.value.location
    resource_group_name = azurerm_resource_group.rg[each.key].name
    address_space = each.value.address_space
  
}