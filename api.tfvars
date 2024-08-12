api = {
    "api" = {
        status           = "ENABLED"
        name             = "script_monitorapi"
        type             = "SCRIPT_BROWSER"
        locations_public = ["AP_SOUTH_1", "AP_EAST_1"]
        period           = "EVERY_DAY"

        enable_screenshot_on_failure_and_script = false

        script = "$browser.get('https://one.newrelic.com')"

        runtime_type_version = "100"
        runtime_type         = "CHROME_BROWSER"
        script_language      = "JAVASCRIPT"  
    }
}