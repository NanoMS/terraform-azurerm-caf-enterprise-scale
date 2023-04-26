# Use variables to customize the deployment

variable "root_id" {
  type        = string
  description = "Sets the value used for generating unique resource naming within the module."
  default     = "nanoalz"
}

variable "root_name" {
  type        = string
  description = "Sets the value used for the \"intermediate root\" management group display name."
  default     = "Nano ALZ"
}

variable "primary_location" {
  type        = string
  description = "Sets the location for \"primary\" resources to be created in."
  default     = "westeurope"
}

variable "secondary_location" {
  type        = string
  description = "Sets the location for \"secondary\" resources to be created in."
  default     = "northeurope"
}

variable "subscription_id_connectivity" {
  type        = string
  description = "Subscription ID to use for \"connectivity\" resources."
  default     = "ab42d0e7-6d82-4476-ad15-faa7b4afb627"
}

variable "subscription_id_identity" {
  type        = string
  description = "Subscription ID to use for \"identity\" resources."
  default     = "ab42d0e7-6d82-4476-ad15-faa7b4afb627"
}

variable "subscription_id_management" {
  type        = string
  description = "Subscription ID to use for \"management\" resources."
  default     = "ab42d0e7-6d82-4476-ad15-faa7b4afb627"
}

variable "email_security_contact" {
  type        = string
  description = "Set a custom value for the security contact email address."
  default     = "naalloua@microsoft.com"
}

variable "log_retention_in_days" {
  type        = number
  description = "Set a custom value for how many days to store logs in the Log Analytics workspace."
  default     = 60
}

variable "enable_ddos_protection" {
  type        = bool
  description = "Controls whether to create a DDoS Network Protection plan and link to hub virtual networks."
  default     = false
}

variable "connectivity_resources_tags" {
  type        = map(string)
  description = "Specify tags to add to \"connectivity\" resources."
  default = {
    deployedBy = "terraform/azure/caf-enterprise-scale/examples/l400-multi"
    demo_type  = "Deploy connectivity resources using multiple module declarations"
  }
}

variable "management_resources_tags" {  
type = map(string)  
default = {    
BelongsTo = "management"	  
}
} 

