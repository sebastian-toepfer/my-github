resource "sonarcloud_project" "projects" {
  for_each   = { for key, value in var.repos: key => value if value.enable_sonar }
  key        = "sebastian-toepfer_${each.key}"
  name       = each.value.display_name
  visibility = "public"
}
