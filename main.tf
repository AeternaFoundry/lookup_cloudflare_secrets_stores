data "cloudflare_secrets_stores" "secrets_stores_lookup" {
  for_each = var.secrets_stores_lookup

  account_id = each.value.account_id
  direction  = each.value.direction
  max_items  = each.value.max_items
  order      = each.value.order
}

