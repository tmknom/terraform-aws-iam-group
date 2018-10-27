# Input Variable Configuration
#
# https://www.terraform.io/docs/configuration/variables.html

variable "name" {
  type        = "string"
  description = "The group's name."
}

variable "path" {
  default     = "/"
  type        = "string"
  description = "Path in which to create the group and the policy."
}

variable "users" {
  default     = []
  type        = "list"
  description = "A list of IAM User names to associate with the Group."
}

variable "policy" {
  type        = "string"
  description = "The policy document. This is a JSON formatted string."
}

variable "description" {
  default     = "Managed by Terraform"
  type        = "string"
  description = "Description of the policy."
}
