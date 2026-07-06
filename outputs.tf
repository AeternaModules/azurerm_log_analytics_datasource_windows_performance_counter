output "log_analytics_datasource_windows_performance_counters" {
  description = "All log_analytics_datasource_windows_performance_counter resources"
  value       = azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters
}
output "log_analytics_datasource_windows_performance_counters_counter_name" {
  description = "List of counter_name values across all log_analytics_datasource_windows_performance_counters"
  value       = [for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : v.counter_name]
}
output "log_analytics_datasource_windows_performance_counters_instance_name" {
  description = "List of instance_name values across all log_analytics_datasource_windows_performance_counters"
  value       = [for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : v.instance_name]
}
output "log_analytics_datasource_windows_performance_counters_interval_seconds" {
  description = "List of interval_seconds values across all log_analytics_datasource_windows_performance_counters"
  value       = [for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : v.interval_seconds]
}
output "log_analytics_datasource_windows_performance_counters_name" {
  description = "List of name values across all log_analytics_datasource_windows_performance_counters"
  value       = [for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : v.name]
}
output "log_analytics_datasource_windows_performance_counters_object_name" {
  description = "List of object_name values across all log_analytics_datasource_windows_performance_counters"
  value       = [for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : v.object_name]
}
output "log_analytics_datasource_windows_performance_counters_resource_group_name" {
  description = "List of resource_group_name values across all log_analytics_datasource_windows_performance_counters"
  value       = [for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : v.resource_group_name]
}
output "log_analytics_datasource_windows_performance_counters_workspace_name" {
  description = "List of workspace_name values across all log_analytics_datasource_windows_performance_counters"
  value       = [for k, v in azurerm_log_analytics_datasource_windows_performance_counter.log_analytics_datasource_windows_performance_counters : v.workspace_name]
}

