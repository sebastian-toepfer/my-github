resource "github_branch" "my-github_default" {
  repository = github_repository.my-github.name
  branch     = "main"
}

resource "github_branch" "default" {
  for_each   = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_default_branch }
  repository = each.value.name
  branch     = "main"
}
