resource "newrelic_synthetics_cert_check_monitor" "ssl" {
  for_each = var.ssl
  name                   = each.value.name
  domain                 = each.value.domain
  locations_public       = each.value.locations_public
  certificate_expiration = each.value.certificate_expiration
  period                 = each.value.period
  status                 = each.value.status
  runtime_type           = each.value.runtime_type
  runtime_type_version   = each.value.runtime_type_version

}