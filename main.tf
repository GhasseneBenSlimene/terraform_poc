terraform {
  cloud {
    organization = "ghassene_terrafrom_poc"

    workspaces {
      name = "terraform-poc-cloud"
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
