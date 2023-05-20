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
  sonar-token             = var.sonar-token
  dependabot-sonar-token  = var.dependabot-sonar-token
  unprotect-the-protected = var.unprotect-the-protected
}

