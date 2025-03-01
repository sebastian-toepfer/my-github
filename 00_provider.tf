provider "github" {
  token = var.github_token
}

provider "github" {
  alias = "sebastian-toepfer"
  token = var.github_token
  owner = "sebastian-toepfer"
}

provider "sonarcloud" {
  organization = "sebastian-toepfer"
  token        = var.sonar_token
}

provider "sonarcloud" {
  alias        = "sebastian-toepfer"
  organization = "sebastian-toepfer"
  token        = var.sonar_token
}
