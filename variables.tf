variable "servicebus_queue_authorization_rules" {
  description = <<EOT
Map of servicebus_queue_authorization_rules, attributes below
Required:
    - name
    - queue_id
Optional:
    - listen
    - manage
    - send
EOT

  type = map(object({
    name     = string
    queue_id = string
    listen   = optional(bool, false)
    manage   = optional(bool, false)
    send     = optional(bool, false)
  }))
}

