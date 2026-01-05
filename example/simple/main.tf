# Local usage example
#module "vnet_local" {
#  source              = "../../"
#  resource_group_name = "rg-example-local"
#  location            = "East US"
#  vnet_name           = "example-vnet-local"
#  address_space       = ["10.30.0.0/16"]
#  dns_servers         = ["10.0.0.4", "10.0.0.5"]
#  tags = {
#    owner = "DevOpsTerraformLabs"
#    env   = "dev"
#  }
#}

# Remote usage example
module "vnet_remote" {
  source              = "git@github.com:DevOpsIaCLabs/iac-azurerm-vnet.git"
  resource_group_name = "rg-example-remote"
  location            = "East US"
  vnet_name           = "example-vnet-remote"
  address_space       = ["10.30.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
  tags = {
    owner = "DevOpsTerraformLabs"
    env   = "dev"
  }
}