resource "github_issue_label" "semver-major" {
  for_each   = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_release }
  repository = each.value.name
  name       = "semver-major"
  color      = "C0C0C0"
}

resource "github_issue_label" "semver-minor" {
  for_each   = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_release }
  repository = each.value.name
  name       = "semver-minor"
  color      = "CACACA"
}

resource "github_issue_label" "semver-patch" {
  for_each   = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_release }
  repository = each.value.name
  name       = "semver-patch"
  color      = "D3D3D3"
}
