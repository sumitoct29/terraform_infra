terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=4.1.0"

        }
    }
}

provider "azurerm" {
    features {}
    subscription_id = "13850ab2-2652-464c-a22f-86b48510b4a5"
}
