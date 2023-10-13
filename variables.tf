variable "terratowns_endpoint" {
 type = string
}

variable "terratowns_access_token" {
 type = string
}

variable "teacherseat_user_uuid" {
  description = "The UUID of the user"
  type        = string
}

variable "siteone" {
  type = object({
    public_path = string
    content_version = number
  })
}

variable "sitetwo" {
  type = object({
    public_path = string
    content_version = number
  })
}
