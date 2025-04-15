resource "azurerm_resource_group" "my_resource_group" {
  name = "my-resource-group"
  location = var.azurerm_location
}

resource "azurerm_virtual_network" "my_virtual_network" {
  name = "my-virtual-network"
  address_space = [ var.virtual_network_address ]
  resource_group_name = azurerm_resource_group.my_resource_group.name
  location = var.azurerm_location
}

resource "azurerm_subnet" "private" {
    name = "private"
    resource_group_name = azurerm_resource_group.my_resource_group.name
    address_prefixes = [ var.subnet_prefix]
    virtual_network_name = azurerm_virtual_network.my_virtual_network.name
}

resource "azurerm_linux_virtual_machine_scale_set" "scale_set" {
  name = "my-scale-set"
  resource_group_name = azurerm_resource_group.my_resource_group.name
  location = var.azurerm_location
  sku = "Standard_F2"
  instances = 1
  admin_username = "admin"

  admin_ssh_key {
  username   = "admin"
  public_key = file("~/.ssh/id_rsa.pub")
}

  source_image_reference {
    publisher = "Canonical"
    offer = "0001-com-ubuntu-server-jammy"
    sku = "22_04-lts"
    version = "lastest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching = "ReadWrite"
  }

  network_interface {
    name = "my-network-interface"
    primary = true

    ip_configuration {
      name = "internal"
      primary = true
      subnet_id = azurerm_subnet.private.id
    }
  }
}