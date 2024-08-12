monitor = {
  "monitor1" = {
    status           = "ENABLED"
    name             = "terafmonitor"
    period           = "EVERY_DAY"
    uri              = "https://www.one.newrelic.com"
    type             = "BROWSER"
    locations_public = ["AP_SOUTH_1"]

    enable_screenshot_on_failure_and_script = true
    runtime_type                            = "CHROME_BROWSER"
    runtime_type_version                    = "100"
    script_language                         = "JAVASCRIPT"
    device_type                             = "MOBILE"
    device_orientation                      = "LANDSCAPE"
  }
}