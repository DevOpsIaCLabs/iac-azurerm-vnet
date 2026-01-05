# iac-azurerm-vnet

OpenTofu-first Azure **Virtual Network (VNet)** module.

This module creates an Azure Virtual Network using clean,
reusable Infrastructure-as-Code practices.

✔ OpenTofu compatible  
✔ Terraform compatible  
✔ AzureRM provider v4+

---
# Repository Structure
````
iac-azurerm-vnet/
├─ example/
│  └─ simple/
│     ├─ providers.tf
│     └─ main.tf
├─ main.tf
├─ variables.tf
├─ outputs.tf
├─ versions.tf
├─ README.md
├─ .gitignore
└─ LICENSE
````
---
## OpenTofu Compatibility

This module is fully compatible with:

- **OpenTofu >= 1.6** (tested with 1.11.2)
- AzureRM Provider >= 4.x

### Usage with OpenTofu
````
tofu init
tofu plan
tofu apply
````
---
# Usage (Remote – GitHub)
````
module "vnet" {
  source = "git::https://github.com/DevOpsIaCLabs/iac-azurerm-vnet.git?ref=v1.0.0"

  resource_group_name = "rg-example"
  location            = "East US"
  vnet_name           = "example-vnet"
  address_space       = ["10.10.0.0/16"]

  tags = {
    environment = "prod"
    owner       = "platform-team"
  }
}
````
---
# Usage (Local)

````
module "vnet" {
  source = "../../"

  resource_group_name = "rg-local"
  location            = "East US"
  vnet_name           = "vnet-local"
  address_space       = ["10.0.0.0/16"]
}


````
---
# Inputs

| Name                | Type         | Required | Description          |
| ------------------- | ------------ | -------- | -------------------- |
| resource_group_name | string       | yes      | Resource Group name  |
| location            | string       | yes      | Azure region         |
| vnet_name           | string       | yes      | Virtual Network name |
| address_space       | list(string) | yes      | Address space        |
| dns_servers         | list(string) | no       | DNS servers          |
| tags                | map(string)  | no       | Tags                 |


---
# Outputs

| Name                | Type         | Required | Description          |
| ------------------- | ------------ | -------- | -------------------- |
| resource_group_name | string       | yes      | Resource Group name  |
| location            | string       | yes      | Azure region         |
| vnet_name           | string       | yes      | Virtual Network name |
| address_space       | list(string) | yes      | Address space        |
| dns_servers         | list(string) | no       | DNS servers          |
| tags                | map(string)  | no       | Tags                 |


---
# Recommended Usage Pattern

1. Resource Group
2. Virtual Network
3. Subnets
4. NSG / Route Table
5. Compute & Platform resources
---
# Versioning
Always pin the module version:
````
?ref=v1.0.0
````
--- 




