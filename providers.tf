terraform {
   required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
#   cloud {
#     organization = "MPTerraformBootcamp"

#     workspaces {
#       name = "terrahouse"
#     }
#   }

}

provider "terratowns" {
  # endpoint = "http://localhost:4567/api"
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}
