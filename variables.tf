variable "logging_log_views" {
  description = <<EOT
Map of logging_log_views, attributes below
Required:
    - bucket
    - name
Optional:
    - deletion_policy
    - description
    - filter
    - location
    - parent
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    bucket          = string
    name            = string
    deletion_policy = optional(string)
    description     = optional(string)
    filter          = optional(string)
    location        = optional(string)
    parent          = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

