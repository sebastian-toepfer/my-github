resource "github_repository" "my-github" {
  name                   = "my-github"
  delete_branch_on_merge = true
  has_discussions        = false
  has_downloads          = false
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  vulnerability_alerts   = true
}

resource "github_repository" "repos" {
  for_each               = var.repos
  name                   = each.key
  description            = each.value.description
  delete_branch_on_merge = true
  has_discussions        = true
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  vulnerability_alerts   = true
}

resource "github_repository" "gh-common" {
  name            = "gh-common"
  has_discussions = false
  has_downloads   = false
  has_issues      = false
  has_projects    = false
  has_wiki        = false
}

resource "github_repository" "workspaces" {
  name       = "workspaces"
  visibility = "private"
}

resource "github_repository" "pdf-test" {
  name                   = "pdf-test"
  delete_branch_on_merge = true
  has_discussions        = false
  has_downloads          = true
  has_issues             = true
  has_projects           = false
  vulnerability_alerts   = true
}
