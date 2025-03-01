terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }

    sonarcloud = {
      source = "rewe-digital/sonarcloud"
      version = "0.5.2"
    }
  }
}
