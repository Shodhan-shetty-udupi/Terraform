terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "1.18.0" # or whatever was working before
    }
  }
}


provider "auth0" {
   domain       ="trevonix.us.auth0.com"
  client_id    = "LzdU1IqYJyZujqsmFvmnFFjeOwk2vXlK"
  client_secret = "ctdgQGSDThItZJarNn9t5FBfj9qg-QIRlMExQSDeirNLzLHkYm94fZ6TtFo0ppdp"
}