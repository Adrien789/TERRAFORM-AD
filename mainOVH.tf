terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 2.1"
    }
  }
}

provider "ovh" {
  endpoint           = "ovh-eu"
  application_key    = "a9fcf21b6e16d630"
  application_secret = "6526675320a3144f393e6c0785bffde4"
  consumer_key       = "56884464cf6ea09a2480b3aacd550533"
}

# Création d'un container de stockage (Object Storage)
resource "ovh_cloud_project_storage" "my-bucket" {
 service_name = "fec35d4f58194e9f840d7de8f491f937" # Replace with your OVHcloud project ID
 region_name = "GRA" # Replace with the desired region in uppercase.
  name = "object-storage-simple"
  versioning = {
    status = "enabled"
  }
}

