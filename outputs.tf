output "log_analytics_datasource_windows_performance_counters_id" {
  description = "Map of id values across all log_analytics_datasource_windows_performance_counters, keyed the same as var.log_analytics_datasource_windows_performance_counters"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : k => v.id }
}
output "log_analytics_datasource_windows_performance_counters_counter_name" {
  description = "Map of counter_name values across all log_analytics_datasource_windows_performance_counters, keyed the same as var.log_analytics_datasource_windows_performance_counters"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : k => v.counter_name }
}
output "log_analytics_datasource_windows_performance_counters_instance_name" {
  description = "Map of instance_name values across all log_analytics_datasource_windows_performance_counters, keyed the same as var.log_analytics_datasource_windows_performance_counters"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : k => v.instance_name }
}
output "log_analytics_datasource_windows_performance_counters_interval_seconds" {
  description = "Map of interval_seconds values across all log_analytics_datasource_windows_performance_counters, keyed the same as var.log_analytics_datasource_windows_performance_counters"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : k => v.interval_seconds }
}
output "log_analytics_datasource_windows_performance_counters_name" {
  description = "Map of name values across all log_analytics_datasource_windows_performance_counters, keyed the same as var.log_analytics_datasource_windows_performance_counters"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : k => v.name }
}
output "log_analytics_datasource_windows_performance_counters_object_name" {
  description = "Map of object_name values across all log_analytics_datasource_windows_performance_counters, keyed the same as var.log_analytics_datasource_windows_performance_counters"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : k => v.object_name }
}
output "log_analytics_datasource_windows_performance_counters_resource_group_name" {
  description = "Map of resource_group_name values across all log_analytics_datasource_windows_performance_counters, keyed the same as var.log_analytics_datasource_windows_performance_counters"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : k => v.resource_group_name }
}
output "log_analytics_datasource_windows_performance_counters_workspace_name" {
  description = "Map of workspace_name values across all log_analytics_datasource_windows_performance_counters, keyed the same as var.log_analytics_datasource_windows_performance_counters"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : k => v.workspace_name }
}

