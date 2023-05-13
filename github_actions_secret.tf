resource "github_actions_secret" "sebastian-toepfer_my-github-terraform-secret" {
  repository      = github_repository.sebastian-toepfer_my-github.name
  secret_name     = "TF_API_TOKEN"
  plaintext_value = var.gh_actions-secret-terraform_default
}

