variable "resource_group_name" {
  description = "Name of the resource group where the vNet will be created"
  type        = string
}

variable "location" {
  description = "Azure location (region) for the virtual Network (e.g., East US)"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual Network"
  type        = string
}

variable "address_space" {
  description = "List fo the address spaces for the Virtual network (CIDR block)"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "dns_servers" {
  description = "Optional list of DNS server IP addresses"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Map of tags to assign to the resource group"
  type        = map(string)
  default     = {}
}

