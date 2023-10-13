# module "terrahouse_aws" {
#   source = "./modules/terrahouse_aws"
#   bucket_name = var.bucket_name
#   user_uuid = var.user_uuid
#   index_html_filepath = var.index_html_filepath
#   error_html_filepath = var.error_html_filepath
#   content_version = var.content_version
#   assets_path = var.assets_path
# }

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
  content_version = var.content_version
  assets_path = var.assets_path
}

provider "terratowns" {
  # endpoint = "http://localhost:4567/api"
  # user_uuid="e328f4ab-b99f-421c-84c9-4ccea042c7d1" 
  # token="9b49b3fb-b8e9-483c-b703-97ba88eef8e0"
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}


resource "terratowns_home" "home" {
  name = "How to play Arcanum in 2023!"
  description = <<DESCRIPTION
Arcanum is a game from 2001 that shipped with alot of bugs.
Modders have removed all the originals making this game really fun
to play (despite that old look graphics). This is my guide that will
show you how to play arcanum without spoiling the plot...123
DESCRIPTION
  domain_name = module.terrahouse_aws.cloudfront_url
  # domain_name = "mp3fdq3gz.cloudfront.net"
  # town = "gamers-grotto"
  town = "missingo"
  content_version = 1
}