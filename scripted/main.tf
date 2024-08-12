resource "newrelic_synthetics_script_monitor" "monitor" {
  for_each = var.scripted
  status               = each.value.status
  name                 = each.value.name
  type                 = each.value.type
  locations_public     = each.value.locations_public
  period               = each.value.period

  script               = each.value.script

  script_language      = each.value.script_language
  runtime_type         = each.value.runtime_type
  runtime_type_version = each.value.runtime_type_version

}