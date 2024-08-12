terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
 account_id = 4438271
  api_key = "NRAK-OMWGYS59S8BWH1XNCJ35RKTN6PA"    
  region = "US"                     
}