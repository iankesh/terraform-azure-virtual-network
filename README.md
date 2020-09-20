# Terraform Modules
![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)

Terraform modules for everything.

### Terraform Module to create Resource Group in Microsoft Azure
#### Tools Used
- Terraform: Version 0.12.29
- Azurerm provider: Version v2.20.0

#### Parameters to pass
1. source:              (Required) source of this module
2. name:                (Required) name of the virtual net
3. resource_group_name: (Required) name of the virtual network
4. address_space:       (Required) address space of the virtual network
5. env:                 (Optional) name of the environment
6. team_tag:            (Optional) tag a team
7. creator:             (Optional) tag a creator

#### Usage:
###### Import existing Resource Group
```sh
provider "azurerm" {
  version = "=2.20.0"
  features {}
}

module "az_virtual_network" {
  source              = "../terraform-azure-virtual-network"
  name                = "ankesh-vnet"
  resource_group_name = "ankesh-workspace"
  address_space       = "10.0.2.0/24"
  env                 = "dev"
  team_tag            = "DevOps"
  creator             = "ankesh"
}
```

###### Create new Resource Group using module
```sh
provider "azurerm" {
  version = "=2.20.0"
  features {}
}

module "az_virtual_network" {
  source              = "../terraform-azure-virtual-network"
  name                = "ankesh-vnet"
  resource_group_name = module.az_resource_group.az_rg_name
  address_space       = "10.0.2.0/24"
  env                 = "dev"
  team_tag            = "DevOps"
  creator             = "ankesh"
}
```

#### Terraform Execution:
###### To initialize Terraform:
```sh
terraform init
```

###### To execute Terraform Plan:
```sh
terraform plan
```

###### To apply Terraform changes:
```sh
terraform apply
```

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons Licence" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
