resource "sonarcloud_project" "projects" {
  for_each = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_sonar }
  key        = "sebastian-toepfer_${each.key}"
  name       = var.repos[each.key].display_name
  visibility = "public"
}
