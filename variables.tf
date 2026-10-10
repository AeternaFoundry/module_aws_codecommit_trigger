variable "codecommit_triggers" {
  description = <<EOT
Map of codecommit_triggers, attributes below
Required:
    - repository_name
    - trigger (block):
        - branches (optional)
        - custom_data (optional)
        - destination_arn (required)
        - events (required)
        - name (required)
Optional:
    - region
EOT

  type = map(object({
    repository_name = string
    region          = optional(string)
    trigger = list(object({
      branches        = optional(list(string))
      custom_data     = optional(string)
      destination_arn = string
      events          = list(string)
      name            = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.codecommit_triggers : (
        length(v.trigger) >= 1 && length(v.trigger) <= 10
      )
    ])
    error_message = "Each trigger list must contain between 1 and 10 items"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

