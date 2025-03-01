variable "repos" {
  type = map(object({
    display_name          = string,
    description           = string,
    enable_sonar          = bool,
    enable_default_branch = bool,
    enable_protection     = bool,
    default_actions       = list(string),
    enable_release        = bool,
  }))
}

variable "sonar-token" {
  type      = string
  sensitive = true
}

variable "dependabot-sonar-token" {
  type      = string
  sensitive = true
}

variable "unprotect-the-protected" {
  type      = string
  sensitive = true
}

variable "mvn_repo_user" {
  type      = string
  sensitive = true
}

variable "mvn_repo_pwd" {
  type      = string
  sensitive = true
}

variable "gpg_pwd" {
  type      = string
  sensitive = true
}

variable "gpg_key" {
  type      = string
  sensitive = true
}

