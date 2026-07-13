variable "iothub_routes" {
  description = <<EOT
Map of iothub_routes, attributes below
Required:
    - enabled
    - endpoint_names
    - iothub_name
    - name
    - resource_group_name
    - source
Optional:
    - condition
EOT

  type = map(object({
    enabled             = bool
    endpoint_names      = list(string)
    iothub_name         = string
    name                = string
    resource_group_name = string
    source              = string
    condition           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.iothub_routes : (
        can(regex("^[-_.a-zA-Z0-9]{1,64}$", v.name))
      )
    ])
    error_message = "Route Name name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique."
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_routes : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_routes : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_routes : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_routes : (
        alltrue([for x in v.endpoint_names : length(x) > 0])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

