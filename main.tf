resource "google_logging_log_view" "logging_log_views" {
  for_each = var.logging_log_views

  bucket          = each.value.bucket
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  filter          = each.value.filter
  location        = each.value.location
  parent          = each.value.parent

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

