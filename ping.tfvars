ping = {
    "ping1" = {
        status           = "ENABLED"
        name             = "monitor"
        period           = "EVERY_DAY"
        uri              = "https://www.one.newrelic.com"
        type             = "SIMPLE"
        locations_public = ["AP_SOUTH_1"]


        treat_redirect_as_failure = true
        validation_string         = "success"
        bypass_head_request       = true
        verify_ssl                = true

    }
}