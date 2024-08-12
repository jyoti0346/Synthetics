resource "newrelic_synthetics_monitor" "monitor" {
  for_each = var.simplemonitor
  status           = each.value.status
  name             = each.value.name
  period           = each.value.period
  uri              = each.value.uri
  type             = each.value.type
  locations_public = each.value.locations_public

  enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script
  runtime_type                            = each.value.runtime_type
  runtime_type_version                    = each.value.runtime_type_version
  script_language                         = each.value.script_language
  device_type                             = each.value.device_type
  device_orientation                      = each.value.device_orientation

}