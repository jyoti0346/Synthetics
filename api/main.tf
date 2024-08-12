resource "newrelic_synthetics_script_monitor" "monitorapi" {
    for_each = var.api
    status           = each.value.status
    name             = each.value.name
    type             = each.value.type
    locations_public = each.value.locations_public
    period           = each.value.period

    enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script

    script = each.value.script

    runtime_type_version = each.value.runtime_type_version
    runtime_type         = each.value.runtime_type
    script_language      = each.value.script_language

}