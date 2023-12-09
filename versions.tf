terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.8"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.2.3"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">=2.12.1"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.16.1"
    }
  }

  required_version = ">= 0.14"
}
