resource "github_branch_protection" "my-github" {
  repository_id = github_repository.my-github.node_id

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = false

  require_conversation_resolution = true
  required_pull_request_reviews {
    required_approving_review_count = 0
  }

  required_status_checks {
    contexts = [
      "Terraform Cloud/sebastian-toepfer/github-personal",
    ]
    strict = true
  }
}

resource "github_branch_protection" "domain-driven-desgin" {
  repository_id = github_repository.domain-driven-desgin.node_id

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = false

  require_conversation_resolution = true
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    require_last_push_approval      = false
    required_approving_review_count = 0
    restrict_dismissals             = false
  }

  required_status_checks {
    contexts = [
      "build and analyze",
    ]
    strict = true
  }
}

resource "github_branch_protection" "json-rpc" {
  repository_id = github_repository.json-rpc.node_id

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = false

  require_conversation_resolution = true
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    require_last_push_approval      = false
    required_approving_review_count = 0
    restrict_dismissals             = false
  }

  required_status_checks {
    contexts = [
      "build / build and analyze",
    ]
    strict = true
  }
}

resource "github_branch_protection" "pdfbox-fluent-layout" {
  repository_id = github_repository.pdfbox-fluent-layout.node_id

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = false

  require_conversation_resolution = true
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    require_last_push_approval      = false
    required_approving_review_count = 0
    restrict_dismissals             = false
  }

  required_status_checks {
    contexts = [
      "build / build and analyze",
    ]
    strict = true
  }
}

resource "github_branch_protection" "json-printable-maven-plugin" {
  repository_id = github_repository.json-printable-maven-plugin.node_id

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = false

  require_conversation_resolution = true
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    require_last_push_approval      = false
    required_approving_review_count = 0
    restrict_dismissals             = false
  }

  required_status_checks {
    contexts = [
      "build / build and analyze",
    ]
    strict = true
  }
}

