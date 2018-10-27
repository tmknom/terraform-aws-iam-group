# Input Variable Configuration
#
# https://www.terraform.io/docs/configuration/variables.html

variable "name" {
  type        = "string"
  description = "The group's name."
}

variable "users" {
  default     = []
  type        = "list"
  description = "A list of IAM User names to associate with the Group."
}
