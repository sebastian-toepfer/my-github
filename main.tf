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
      version = "~> 6.0"
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
      description           = "A library for creating better systems according to domain driven design",
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "pdfbox-fluent-layout" = {
      description           = null,
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "json-rpc" = {
      description           = "json-rpc for java backends",
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = [
        "build / build and analyze",
        "run jmh benchmark"
      ],
      enable_release        = true
    },
    "json-printable-maven-plugin" = {
      description           = null,
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "json-schema" = {
      description           = "json-schema for and with json-p",
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "bnf4j" = {
      description           = "lib for the use of bnf in java",
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = false
    },
    "condition4j" = {
      description           = "lib for more oo-based preconditions",
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "learning-rust" = {
      description           = null,
      enable_sonar          = false,
      enable_default_branch = false,
      enable_protection     = false,
      default_actions       = [],
      enable_release        = false
    },
    "3d-models" = {
      description           = null,
      enable_sonar          = false,
      enable_default_branch = false,
      enable_protection     = false,
      default_actions       = [],
      enable_release        = false
    },
    "oss-mvn-parent" = {
      description           = null,
      enable_sonar          = false,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = [],
      enable_release        = true
    },
    "refaster" = {
      description           = null,
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
