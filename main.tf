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
  repos = {
    "domain-driven-desgin" = {
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build and analyze"],
      enable_release        = true
    },
    "pdfbox-fluent-layout" = {
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "json-rpc" = {
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "json-printable-maven-plugin" = {
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "json-schema" = {
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = false
    },
    "learning-rust" = {
      enable_sonar          = false,
      enable_default_branch = false,
      enable_protection     = false,
      default_actions       = [],
      enable_release        = false
    },
    "3d-models" = {
      enable_sonar          = false,
      enable_default_branch = false,
      enable_protection     = false,
      default_actions       = [],
      enable_release        = false
    },
    "oss-mvn-parent" = {
      enable_sonar          = false,
      enable_default_branch = false,
      enable_protection     = false,
      default_actions       = [],
      enable_release        = false
    },
    "refaster" = {
      enable_sonar          = false,
      enable_default_branch = false,
      enable_protection     = false,
      default_actions       = [],
      enable_release        = false
    }
  }
  sonar-token             = var.sonar-token
  dependabot-sonar-token  = var.dependabot-sonar-token
  unprotect-the-protected = var.unprotect-the-protected
  mvn_repo_user           = var.mvn_repo_user
  mvn_repo_pwd            = var.mvn_repo_pwd
  gpg_pwd                 = var.pgp_pwd
  gpg_key                 = var.pgp_key
}
