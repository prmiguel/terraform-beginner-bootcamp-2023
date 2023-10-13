####################
# Site One         #
####################
module "terrahouse_aws_site_one" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.siteone.public_path
  content_version = var.siteone.content_version
}

resource "terratowns_home" "home_one" {
  name = "Site 1!"
  description = <<DESCRIPTION
Site One
DESCRIPTION
  domain_name = module.terrahouse_aws_site_one.domain_name
  town = "missingo"
  content_version = 1
}

####################
# Site Two         #
####################
module "terrahouse_aws_site_two" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.sitetwo.public_path
  content_version = var.sitetwo.content_version
}

resource "terratowns_home" "home_two" {
  name = "Site 2!"
  description = <<DESCRIPTION
Site Two
DESCRIPTION
  domain_name = module.terrahouse_aws_site_two.domain_name
  town = "missingo"
  content_version = 1
}

####################
# Site Three       #
####################
module "terrahouse_aws_site_three" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.sitethree.public_path
  content_version = var.sitethree.content_version
}

resource "terratowns_home" "home_three" {
  name = "Welcome to Cochabamba, Bolivia"
  description = <<DESCRIPTION
Cochabamba is a city located in the central part of Bolivia, in a valley bearing the same name. 
Known for its pleasant climate, Cochabamba is often referred to as the "City of Eternal Spring." 
The city is famous for its rich history, vibrant culture, and delicious cuisine.
DESCRIPTION
  domain_name = module.terrahouse_aws_site_three.domain_name
  town = "the-nomad-pad"
  content_version = 1
}