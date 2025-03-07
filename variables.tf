# variables.tf
variable "env" {
  description = "The environment to deploy (test or prod)"
  type        = string
}

variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}

# Additional variables for resource names or tags could be added if needed.
