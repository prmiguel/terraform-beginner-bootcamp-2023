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
