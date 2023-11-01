import {
  source = "provider.tm.hcl"
}
module "nginx" {
 source = "../../modules/container"
 
 ## variables
 image = "nginx"
}
