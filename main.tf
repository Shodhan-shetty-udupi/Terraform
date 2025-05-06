terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "1.18.0" # or whatever was working before
    }
  }
}


provider "auth0" {
 domain       ="ru-demo.us.auth0.com"
  client_id    = "9QsJ0QUEoYT2h6ffF51h5Gk8SGqlIu9L"
  client_secret = "hinWSsp1FYkar8mqQBTeTDxfauVACzDBIYqNYvOlc0IvUA213K5iEquHSznaQp2U"
}