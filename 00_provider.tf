provider "github" {
  token = var.github_token
}

provider "github" {
  alias = "sebastian-toepfer"
  token = var.github_token
  owner = "sebastian-toepfer"
}

