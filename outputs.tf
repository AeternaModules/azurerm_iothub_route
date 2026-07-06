output "iothub_routes" {
  description = "All iothub_route resources"
  value       = azurerm_iothub_route.iothub_routes
}
output "iothub_routes_condition" {
  description = "List of condition values across all iothub_routes"
  value       = [for k, v in azurerm_iothub_route.iothub_routes : v.condition]
}
output "iothub_routes_enabled" {
  description = "List of enabled values across all iothub_routes"
  value       = [for k, v in azurerm_iothub_route.iothub_routes : v.enabled]
}
output "iothub_routes_endpoint_names" {
  description = "List of endpoint_names values across all iothub_routes"
  value       = [for k, v in azurerm_iothub_route.iothub_routes : v.endpoint_names]
}
output "iothub_routes_iothub_name" {
  description = "List of iothub_name values across all iothub_routes"
  value       = [for k, v in azurerm_iothub_route.iothub_routes : v.iothub_name]
}
output "iothub_routes_name" {
  description = "List of name values across all iothub_routes"
  value       = [for k, v in azurerm_iothub_route.iothub_routes : v.name]
}
output "iothub_routes_resource_group_name" {
  description = "List of resource_group_name values across all iothub_routes"
  value       = [for k, v in azurerm_iothub_route.iothub_routes : v.resource_group_name]
}
output "iothub_routes_source" {
  description = "List of source values across all iothub_routes"
  value       = [for k, v in azurerm_iothub_route.iothub_routes : v.source]
}

