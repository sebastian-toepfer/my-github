resource "github_branch_default" "my-github" {
  repository = github_repository.my-github.name
  branch     = github_branch.my-github_default.branch
}

resource "github_branch_default" "default" {
  for_each   = github_branch.default
  repository = each.value.repository
  branch     = each.value.branch
}
