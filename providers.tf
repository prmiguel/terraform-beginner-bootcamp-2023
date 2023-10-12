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
