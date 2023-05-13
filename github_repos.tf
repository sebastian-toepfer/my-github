resource "github_repository" "sebastian-toepfer_my-github" {
  name                   = "my-github"
  delete_branch_on_merge = true
  has_discussions        = false
  has_downloads          = false
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  vulnerability_alerts   = true
}
resource "github_repository" "sebastian-toepfer_domain-driven-desgin" {
  name                   = "domain-driven-desgin"
  delete_branch_on_merge = true
  has_discussions        = true
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  vulnerability_alerts   = true
}

resource "github_repository" "sebastian-toepfer_pdfbox-fluent-layout" {
  name                   = "pdfbox-fluent-layout"
  delete_branch_on_merge = true
  has_discussions        = true
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  vulnerability_alerts   = true
}

resource "github_repository" "sebastian-toepfer_json-rpc" {
  name                   = "json-rpc"
  delete_branch_on_merge = true
  has_discussions        = true
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  vulnerability_alerts   = true
}

