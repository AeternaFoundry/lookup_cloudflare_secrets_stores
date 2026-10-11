variable "secrets_stores_lookup" {
  description = <<EOT
Map of secrets_stores_lookup, attributes below
Required:
    - account_id
Optional:
    - direction
    - max_items
    - order
EOT

  type = map(object({
    account_id = string
    direction  = optional(string)
    max_items  = optional(number)
    order      = optional(string)
  }))
}

