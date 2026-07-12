output "iothub_routes_id" {
  description = "Map of id values across all iothub_routes, keyed the same as var.iothub_routes"
  value       = { for k, v in azurerm_iothub_route.iothub_routes : k => v.id }
}
output "iothub_routes_condition" {
  description = "Map of condition values across all iothub_routes, keyed the same as var.iothub_routes"
  value       = { for k, v in azurerm_iothub_route.iothub_routes : k => v.condition }
}
output "iothub_routes_enabled" {
  description = "Map of enabled values across all iothub_routes, keyed the same as var.iothub_routes"
  value       = { for k, v in azurerm_iothub_route.iothub_routes : k => v.enabled }
}
output "iothub_routes_endpoint_names" {
  description = "Map of endpoint_names values across all iothub_routes, keyed the same as var.iothub_routes"
  value       = { for k, v in azurerm_iothub_route.iothub_routes : k => v.endpoint_names }
}
output "iothub_routes_iothub_name" {
  description = "Map of iothub_name values across all iothub_routes, keyed the same as var.iothub_routes"
  value       = { for k, v in azurerm_iothub_route.iothub_routes : k => v.iothub_name }
}
output "iothub_routes_name" {
  description = "Map of name values across all iothub_routes, keyed the same as var.iothub_routes"
  value       = { for k, v in azurerm_iothub_route.iothub_routes : k => v.name }
}
output "iothub_routes_resource_group_name" {
  description = "Map of resource_group_name values across all iothub_routes, keyed the same as var.iothub_routes"
  value       = { for k, v in azurerm_iothub_route.iothub_routes : k => v.resource_group_name }
}
output "iothub_routes_source" {
  description = "Map of source values across all iothub_routes, keyed the same as var.iothub_routes"
  value       = { for k, v in azurerm_iothub_route.iothub_routes : k => v.source }
}

