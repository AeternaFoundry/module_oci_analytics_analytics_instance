resource "oci_analytics_analytics_instance" "analytics_analytics_instances" {
  for_each = var.analytics_analytics_instances

  compartment_id     = each.value.compartment_id
  feature_set        = each.value.feature_set
  license_type       = each.value.license_type
  name               = each.value.name
  admin_user         = each.value.admin_user
  defined_tags       = each.value.defined_tags
  description        = each.value.description
  domain_id          = each.value.domain_id
  email_notification = each.value.email_notification
  feature_bundle     = each.value.feature_bundle
  freeform_tags      = each.value.freeform_tags
  idcs_access_token  = each.value.idcs_access_token
  kms_key_id         = each.value.kms_key_id
  state              = each.value.state
  update_channel     = each.value.update_channel

  capacity {
    capacity_type  = each.value.capacity.capacity_type
    capacity_value = each.value.capacity.capacity_value
  }

  dynamic "network_endpoint_details" {
    for_each = each.value.network_endpoint_details != null ? [each.value.network_endpoint_details] : []
    content {
      network_endpoint_type      = network_endpoint_details.value.network_endpoint_type
      network_security_group_ids = network_endpoint_details.value.network_security_group_ids
      subnet_id                  = network_endpoint_details.value.subnet_id
      vcn_id                     = network_endpoint_details.value.vcn_id
      whitelisted_ips            = network_endpoint_details.value.whitelisted_ips
      whitelisted_services       = network_endpoint_details.value.whitelisted_services
      dynamic "whitelisted_vcns" {
        for_each = network_endpoint_details.value.whitelisted_vcns != null ? network_endpoint_details.value.whitelisted_vcns : []
        content {
          id              = whitelisted_vcns.value.id
          whitelisted_ips = whitelisted_vcns.value.whitelisted_ips
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

