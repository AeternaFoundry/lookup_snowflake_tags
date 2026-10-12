data "snowflake_tags" "tags_lookup" {
  for_each = var.tags_lookup

  like = each.value.like

  dynamic "in" {
    for_each = each.value.in != null ? [each.value.in] : []
    content {
      account             = in.value.account
      application         = in.value.application
      application_package = in.value.application_package
      database            = in.value.database
      schema              = in.value.schema
    }
  }
}

