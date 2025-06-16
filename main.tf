terraform {
  cloud {
    organization = "ghassene_terraform_cloud"

    workspaces {
      name = "terraform_poc"
    }
  }

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "random" {}

resource "random_pet" "name" {
  length = 2
}
