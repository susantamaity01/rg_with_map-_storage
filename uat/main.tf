module "azure_resources" {

  source = "../../modules"

  # Resource Group Input
  resource05 = var.resource05

  # Storage Account Input
  storage07 = var.storage07
}