terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "1.18.0" # or whatever was working before
    }
  }
}


provider "auth0" {
  
}