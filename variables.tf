variable "tags_lookup" {
  description = <<EOT
Map of tags_lookup, attributes below
Optional:
    - like
    - in (block):
        - account (optional)
        - application (optional)
        - application_package (optional)
        - database (optional)
        - schema (optional)
EOT

  type = map(object({
    like = optional(string)
    in = optional(object({
      account             = optional(bool)
      application         = optional(string)
      application_package = optional(string)
      database            = optional(string)
      schema              = optional(string)
    }))
  }))
}

