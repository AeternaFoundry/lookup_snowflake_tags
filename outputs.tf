output "tags_lookup_id" {
  description = "Map of id values across all tags_lookup, keyed the same as var.tags_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_tags.tags_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tags_lookup_in" {
  description = "Map of in values across all tags_lookup, keyed the same as var.tags_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_tags.tags_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "tags_lookup_like" {
  description = "Map of like values across all tags_lookup, keyed the same as var.tags_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_tags.tags_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "tags_lookup_tags" {
  description = "Map of tags values across all tags_lookup, keyed the same as var.tags_lookup except keys with no tags are omitted"
  value       = { for k, v in data.snowflake_tags.tags_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

