output "codecommit_triggers_id" {
  description = "Map of id values across all codecommit_triggers, keyed the same as var.codecommit_triggers"
  value       = { for k, v in aws_codecommit_trigger.codecommit_triggers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codecommit_triggers_configuration_id" {
  description = "Map of configuration_id values across all codecommit_triggers, keyed the same as var.codecommit_triggers"
  value       = { for k, v in aws_codecommit_trigger.codecommit_triggers : k => v.configuration_id if v.configuration_id != null && length(v.configuration_id) > 0 }
}
output "codecommit_triggers_region" {
  description = "Map of region values across all codecommit_triggers, keyed the same as var.codecommit_triggers"
  value       = { for k, v in aws_codecommit_trigger.codecommit_triggers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "codecommit_triggers_repository_name" {
  description = "Map of repository_name values across all codecommit_triggers, keyed the same as var.codecommit_triggers"
  value       = { for k, v in aws_codecommit_trigger.codecommit_triggers : k => v.repository_name if v.repository_name != null && length(v.repository_name) > 0 }
}
output "codecommit_triggers_trigger" {
  description = "Map of trigger values across all codecommit_triggers, keyed the same as var.codecommit_triggers"
  value       = { for k, v in aws_codecommit_trigger.codecommit_triggers : k => v.trigger if v.trigger != null && length(v.trigger) > 0 }
}

