terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 0.43.0"
    }
  }
}

provider "ovh" {
  endpoint           = "ovh-eu"
  application_key    = var.ovh_app_key
  application_secret = var.ovh_app_secret
  consumer_key       = var.ovh_consumer_key
}

# Création d'un container de stockage (Object Storage)
resource "ovh_cloud_project_container" "mon_stockage" {
  service_name = "TON_PROJECT_ID" # L'ID de ton projet Public Cloud OVH
  region       = "GRA"            # Région Gravelines
  name         = "stockage-devops-output"
  type         = "private"        # Peut être 'public' ou 'private'
}
