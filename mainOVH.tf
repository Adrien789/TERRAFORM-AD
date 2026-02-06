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
  application_key    = "afc5883b59c00038"
  application_secret = "c994f8168c333e24c3e166b9cd9190a3"
  consumer_key       = "dea278b169b4698ebedbb28d521b8d5b"
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

