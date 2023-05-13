resource "github_branch_default" "sebastian-toepfer_my-github" {
  repository = github_repository.sebastian-toepfer_my-github.name
  branch     = github_branch.sebastian-toepfer_my-github_default.branch
}

resource "github_branch_default" "sebastian-toepfer_domain-driven-desgin" {
  repository = github_repository.sebastian-toepfer_domain-driven-desgin.name
  branch     = github_branch.sebastian-toepfer_domain-driven-desgin_default.branch
}

resource "github_branch_default" "sebastian-toepfer_pdfbox-fluent-layout" {
  repository = github_repository.sebastian-toepfer_pdfbox-fluent-layout.name
  branch     = github_branch.sebastian-toepfer_pdfbox-fluent-layout_default.branch
}

resource "github_branch_default" "sebastian-toepfer_json-rpc" {
  repository = github_repository.sebastian-toepfer_json-rpc.name
  branch     = github_branch.sebastian-toepfer_json-rpc_default.branch
}

