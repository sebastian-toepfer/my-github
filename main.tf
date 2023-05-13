terraform {
  cloud {
    organization = "sebastian-toepfer"

    workspaces {
      name = "github-personal"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

module "sebastian-toepfer" {
  source = "./sebastian-toepfer"
  providers = {
    github = github.sebastian-toepfer
  }
}

