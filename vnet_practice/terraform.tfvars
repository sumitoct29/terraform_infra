infra = {
    dev ={
        rg_name = "dev04-rg"
        location = "central india"
        vnet_name = "dev04-vnet"
        address_space = ["10.0.0.0/16"]

    }

     test ={
        rg_name = "test04-rg"
        location = "japan east"
        vnet_name = "test04-vnet"
        address_space = ["10.0.0.0/16"]
        
    }

   
}