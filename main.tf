terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

  encryption {
    key_provider "pbkdf2" "enc_passphrase" {
      passphrase    = var.enc_passphrase
      key_length    = 32
      iterations    = 600000
      salt_length   = 32
      hash_function = "sha512"
    }

    method "aes_gcm" "enc_passphrase" {
      keys = key_provider.pbkdf2.enc_passphrase
    }

    state {
      method   = method.aes_gcm.enc_passphrase
      enforced = true
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
      default_actions = [
        "build / build and analyze",
        "run jmh benchmark"
      ],
      enable_release = true
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
    },
    "openvdi" = {
      description           = "Opensource VDI Solution, inspired by the good old discontinued sun vdi",
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    }
  }
  sonar-token             = var.sonar_token
  dependabot-sonar-token  = var.dependabot_sonar_token
  unprotect-the-protected = var.unprotect_the_protected
  mvn_repo_user           = var.mvn_repo_user
  mvn_repo_pwd            = var.mvn_repo_pwd
  gpg_pwd                 = var.pgp_pwd
  gpg_key                 = var.pgp_key
}
