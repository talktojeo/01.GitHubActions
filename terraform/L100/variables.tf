
variable "resource_group_name" {
  description = "The name of the resource group to create"
  type        = string
  default     = "rg-workload1"
}
variable "resource_group_location" {
  description = "The Azure region to deploy resources in"
  type        = string
  default     = "UK South"
}
