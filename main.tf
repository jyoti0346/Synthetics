# resource "newrelic_synthetics_monitor" "monitor" {
#     for_each = var.synthetics_Monitor
#   status           = each.value.status
#   name             = each.value.name
#   period           = each.value.period
#   uri              = each.value.uri
#   type             = each.value.type
#   locations_public = each.value.locations_public

#   custom_header {
#     name  = each.value.custom_name
#     value = "some_value"
#   }
  

#   treat_redirect_as_failure = true
#   validation_string         = "success"
#   bypass_head_request       = true
#   verify_ssl                = true

#   tag {
#     key    = "some_key"
#     values = ["some_value"]
#   }
# }

module "monitor" {
  source        = "./simple"
  simplemonitor = var.monitor

}

module "broken" {
  source = "./broken"
  Broken = var.Broken

}

module "scripted" {
    source = "./scripted"
    scripted = var.scripted
  
}

module "ssl" {
    source = "./ssl"
    ssl = var.ssl
  
}

module "ping" {
    source = "./ping"
    ping = var.ping
  
}

module "api" {
    source = "./api"
    api = var.api
  
}