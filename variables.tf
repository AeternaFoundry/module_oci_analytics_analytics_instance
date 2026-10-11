variable "analytics_analytics_instances" {
  description = <<EOT
Map of analytics_analytics_instances, attributes below
Required:
    - compartment_id
    - feature_set
    - license_type
    - name
    - capacity (block):
        - capacity_type (required)
        - capacity_value (required)
Optional:
    - admin_user
    - defined_tags
    - description
    - domain_id
    - email_notification
    - feature_bundle
    - freeform_tags
    - idcs_access_token
    - kms_key_id
    - state
    - update_channel
    - network_endpoint_details (block):
        - network_endpoint_type (required)
        - network_security_group_ids (optional)
        - subnet_id (optional)
        - vcn_id (optional)
        - whitelisted_ips (optional)
        - whitelisted_services (optional)
        - whitelisted_vcns (optional, block):
            - id (optional)
            - whitelisted_ips (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id     = string
    feature_set        = string
    license_type       = string
    name               = string
    admin_user         = optional(string)
    defined_tags       = optional(map(string))
    description        = optional(string)
    domain_id          = optional(string)
    email_notification = optional(string)
    feature_bundle     = optional(string)
    freeform_tags      = optional(map(string))
    idcs_access_token  = optional(string)
    kms_key_id         = optional(string)
    state              = optional(string)
    update_channel     = optional(string)
    capacity = object({
      capacity_type  = string
      capacity_value = number
    })
    network_endpoint_details = optional(object({
      network_endpoint_type      = string
      network_security_group_ids = optional(set(string))
      subnet_id                  = optional(string)
      vcn_id                     = optional(string)
      whitelisted_ips            = optional(list(string))
      whitelisted_services       = optional(list(string))
      whitelisted_vcns = optional(list(object({
        id              = optional(string)
        whitelisted_ips = optional(list(string))
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.analytics_analytics_instances : (
        v.network_endpoint_details == null || (contains([for v in ["PRIVATE", "PUBLIC"] : lower(v)], lower(v.network_endpoint_details.network_endpoint_type)))
      )
    ])
    error_message = "must be one of: \"PRIVATE\", \"PUBLIC\""
  }
  validation {
    condition = alltrue([
      for k, v in var.analytics_analytics_instances : (
        v.state == null || (contains([for v in ["INACTIVE", "ACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"INACTIVE\", \"ACTIVE\""
  }
}

