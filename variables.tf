variable "github_token" {
  type      = string
  sensitive = true
}

variable "sonar_token" {
  type      = string
  sensitive = true
}

variable "dependabot_sonar_token" {
  type      = string
  sensitive = true
}

variable "unprotect_the_protected" {
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

