output "analytics_analytics_instances_id" {
  description = "Map of id values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no id are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "analytics_analytics_instances_admin_user" {
  description = "Map of admin_user values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no admin_user are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.admin_user if v.admin_user != null && length(v.admin_user) > 0 }
}
output "analytics_analytics_instances_capacity" {
  description = "Map of capacity values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no capacity are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => one(v.capacity) if v.capacity != null && length(v.capacity) > 0 }
}
output "analytics_analytics_instances_compartment_id" {
  description = "Map of compartment_id values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no compartment_id are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "analytics_analytics_instances_defined_tags" {
  description = "Map of defined_tags values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no defined_tags are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "analytics_analytics_instances_description" {
  description = "Map of description values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no description are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.description if v.description != null && length(v.description) > 0 }
}
output "analytics_analytics_instances_domain_id" {
  description = "Map of domain_id values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no domain_id are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.domain_id if v.domain_id != null && length(v.domain_id) > 0 }
}
output "analytics_analytics_instances_email_notification" {
  description = "Map of email_notification values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no email_notification are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.email_notification if v.email_notification != null && length(v.email_notification) > 0 }
}
output "analytics_analytics_instances_feature_bundle" {
  description = "Map of feature_bundle values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no feature_bundle are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.feature_bundle if v.feature_bundle != null && length(v.feature_bundle) > 0 }
}
output "analytics_analytics_instances_feature_set" {
  description = "Map of feature_set values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no feature_set are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.feature_set if v.feature_set != null && length(v.feature_set) > 0 }
}
output "analytics_analytics_instances_freeform_tags" {
  description = "Map of freeform_tags values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "analytics_analytics_instances_idcs_access_token" {
  description = "Map of idcs_access_token values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no idcs_access_token are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.idcs_access_token if v.idcs_access_token != null && length(v.idcs_access_token) > 0 }
  sensitive   = true
}
output "analytics_analytics_instances_kms_key_id" {
  description = "Map of kms_key_id values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no kms_key_id are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "analytics_analytics_instances_license_type" {
  description = "Map of license_type values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no license_type are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.license_type if v.license_type != null && length(v.license_type) > 0 }
}
output "analytics_analytics_instances_name" {
  description = "Map of name values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no name are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "analytics_analytics_instances_network_endpoint_details" {
  description = "Map of network_endpoint_details values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no network_endpoint_details are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => one(v.network_endpoint_details) if v.network_endpoint_details != null && length(v.network_endpoint_details) > 0 }
}
output "analytics_analytics_instances_resource_groups" {
  description = "Map of resource_groups values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no resource_groups are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.resource_groups if v.resource_groups != null && length(v.resource_groups) > 0 }
}
output "analytics_analytics_instances_service_url" {
  description = "Map of service_url values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no service_url are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.service_url if v.service_url != null && length(v.service_url) > 0 }
}
output "analytics_analytics_instances_state" {
  description = "Map of state values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no state are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "analytics_analytics_instances_system_tags" {
  description = "Map of system_tags values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no system_tags are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "analytics_analytics_instances_time_created" {
  description = "Map of time_created values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no time_created are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "analytics_analytics_instances_time_updated" {
  description = "Map of time_updated values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no time_updated are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "analytics_analytics_instances_update_channel" {
  description = "Map of update_channel values across all analytics_analytics_instances, keyed the same as var.analytics_analytics_instances except keys with no update_channel are omitted"
  value       = { for k, v in oci_analytics_analytics_instance.analytics_analytics_instances : k => v.update_channel if v.update_channel != null && length(v.update_channel) > 0 }
}

