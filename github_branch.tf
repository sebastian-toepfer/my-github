resource "github_branch" "sebastian-toepfer_my-github_default" {
  repository = github_repository.sebastian-toepfer_my-github.name
  branch     = "main"
}

resource "github_branch" "sebastian-toepfer_domain-driven-desgin_default" {
  repository = github_repository.sebastian-toepfer_domain-driven-desgin.name
  branch     = "main"
}

resource "github_branch" "sebastian-toepfer_json-rpc_default" {
  repository = github_repository.sebastian-toepfer_json-rpc.name
  branch     = "main"
}

resource "github_branch" "sebastian-toepfer_pdfbox-fluent-layout_default" {
  repository = github_repository.sebastian-toepfer_pdfbox-fluent-layout.name
  branch     = "main"
}

