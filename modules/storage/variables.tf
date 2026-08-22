variable "resource_group_name" {
  description = "Resource Group name."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "storage_account_name" {
  description = "Storage Account name."
  type        = string
}

variable "tags" {
  description = "Tags."
  type        = map(string)
  default     = {}
}