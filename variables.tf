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
  # --- Unconfirmed validation candidates, derived from azurerm_log_analytics_datasource_windows_performance_counter's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: workspace_name
  #   source:    [from validate.LogAnalyticsWorkspaceName] !regexp.MustCompile("^[A-Za-z0-9][A-Za-z0-9-]+[A-Za-z0-9]$").MatchString(value)
  # path: workspace_name
  #   source:    [from validate.LogAnalyticsWorkspaceName] length > 63 || 4 > length
  # path: interval_seconds
  #   source:    validation.IntBetween(10, math.MaxInt32) - bound(s) not a literal int (e.g. a named constant like math.MaxInt32) - resolve manually
}

