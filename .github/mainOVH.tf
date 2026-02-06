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
  application_key    = afc5883b59c00038
  application_secret = c994f8168c333e24c3e166b9cd9190a3
  consumer_key       = dea278b169b4698ebedbb28d521b8d5b
}

# Création d'un container de stockage (Object Storage)
resource "ovh_cloud_project_container" "mon_stockage" {
  service_name = "TON_PROJECT_ID" # L'ID de ton projet Public Cloud OVH
  region       = "GRA"            # Région Gravelines
  name         = "stockage-devops-output"
  type         = "private"        # Peut être 'public' ou 'private'
}

