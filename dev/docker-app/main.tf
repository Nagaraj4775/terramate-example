module "nginx" {
 source = "../../modules/container"
 
 ## variables
 image = "nginx"
}
