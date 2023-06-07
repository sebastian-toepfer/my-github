variable "github_token" {
  type      = string
  sensitive = true
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

variable "pgp_pwd" {
  type      = string
  sensitive = true
}

variable "pgp_key" {
  type      = string
  sensitive = true
}

