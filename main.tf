terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }

    sonarcloud = {
      source  = "rewe-digital/sonarcloud"
      version = "0.5.2"
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
    github     = github.sebastian-toepfer
    sonarcloud = sonarcloud.sebastian-toepfer
  }
  repos = {
    "domain-driven-desgin" = {
      display_name          = "Domain Driven Desgin",
      description           = "A library for creating better systems according to domain driven design",
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "pdfbox-fluent-layout" = {
      display_name          = "PDFBox Layout",
      description           = null,
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "json-rpc" = {
      display_name          = "JSON RPC",
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
      display_name          = "json-printable-maven-plugin",
      description           = null,
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "json-schema" = {
      display_name          = "Json Schema",
      description           = "json-schema for and with json-p",
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "bnf4j" = {
      display_name          = "BNF for java",
      description           = "lib for the use of bnf in java",
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = false
    },
    "condition4j" = {
      display_name          = "Condition4J",
      description           = "lib for more oo-based preconditions",
      enable_sonar          = true,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = ["build / build and analyze"],
      enable_release        = true
    },
    "learning-rust" = {
      display_name          = "Learning Rust",
      description           = null,
      enable_sonar          = false,
      enable_default_branch = false,
      enable_protection     = false,
      default_actions       = [],
      enable_release        = false
    },
    "3d-models" = {
      display_name          = "3D Models",
      description           = null,
      enable_sonar          = false,
      enable_default_branch = false,
      enable_protection     = false,
      default_actions       = [],
      enable_release        = false
    },
    "oss-mvn-parent" = {
      display_name          = "oss maven parent",
      description           = null,
      enable_sonar          = false,
      enable_default_branch = true,
      enable_protection     = true,
      default_actions       = [],
      enable_release        = true
    },
    "refaster" = {
      display_name          = "Refaster",
      description           = null,
      enable_sonar          = false,
      enable_default_branch = false,
      enable_protection     = false,
      default_actions       = [],
      enable_release        = false
    },
    "openvdi" = {
      display_name          = "OpenVDI",
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

import {
  to = module.sebastian-toepfer.sonarcloud_project.projects["bnf4j"]
  id = "sebastian-toepfer_bnf4j"
}

import {
  to = module.sebastian-toepfer.sonarcloud_project.projects["condition4j"]
  id = "sebastian-toepfer_condition4j"
}

import {
  to = module.sebastian-toepfer.sonarcloud_project.projects["domain-driven-desgin"]
  id = "sebastian-toepfer_domain-driven-desgin"
}

import {
  to = module.sebastian-toepfer.sonarcloud_project.projects["json-rpc"]
  id = "sebastian-toepfer_json-rpc"
}

import {
  to = module.sebastian-toepfer.sonarcloud_project.projects["json-schema"]
  id = "sebastian-toepfer_json-schema"
}

import {
  to = module.sebastian-toepfer.sonarcloud_project.projects["json-printable-maven-plugin"]
  id = "sebastian-toepfer_json-printable-maven-plugin"
}

import {
  to = module.sebastian-toepfer.sonarcloud_project.projects["pdfbox-fluent-layout"]
  id = "sebastian-toepfer_pdfbox-fluent-layout"
}

import {
  to = module.sebastian-toepfer.sonarcloud_project.projects["openvdi"]
  id = "sebastian-toepfer_openvdi"
}
