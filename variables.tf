variable "log_analytics_datasource_windows_performance_counters" {
  description = <<EOT
Map of log_analytics_datasource_windows_performance_counters, attributes below
Required:
    - counter_name
    - instance_name
    - interval_seconds
    - name
    - object_name
    - resource_group_name
    - workspace_name
EOT

  type = map(object({
    counter_name        = string
    instance_name       = string
    interval_seconds    = number
    name                = string
    object_name         = string
    resource_group_name = string
    workspace_name      = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_performance_counters : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_performance_counters : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_performance_counters : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_performance_counters : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_performance_counters : (
        length(v.counter_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_performance_counters : (
        length(v.instance_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_performance_counters : (
        length(v.object_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

