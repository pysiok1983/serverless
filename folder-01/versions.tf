terraform {

  required_version = "~> 1.3.6"

  required_providers {

    google = {
      source = "hashicorp/google"
      version = "4.47.0"
    }

    google-beta = {
      source = "hashicorp/google-beta"
      version = "4.47.0"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.16.1"
    }
    
  }
}



