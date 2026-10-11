output "secrets_stores_lookup_account_id" {
  description = "Map of account_id values across all secrets_stores_lookup, keyed the same as var.secrets_stores_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_secrets_stores.secrets_stores_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "secrets_stores_lookup_direction" {
  description = "Map of direction values across all secrets_stores_lookup, keyed the same as var.secrets_stores_lookup except keys with no direction are omitted"
  value       = { for k, v in data.cloudflare_secrets_stores.secrets_stores_lookup : k => v.direction if v.direction != null && length(v.direction) > 0 }
}
output "secrets_stores_lookup_max_items" {
  description = "Map of max_items values across all secrets_stores_lookup, keyed the same as var.secrets_stores_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_secrets_stores.secrets_stores_lookup : k => v.max_items if v.max_items != null }
}
output "secrets_stores_lookup_order" {
  description = "Map of order values across all secrets_stores_lookup, keyed the same as var.secrets_stores_lookup except keys with no order are omitted"
  value       = { for k, v in data.cloudflare_secrets_stores.secrets_stores_lookup : k => v.order if v.order != null && length(v.order) > 0 }
}
output "secrets_stores_lookup_result" {
  description = "Map of result values across all secrets_stores_lookup, keyed the same as var.secrets_stores_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_secrets_stores.secrets_stores_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

