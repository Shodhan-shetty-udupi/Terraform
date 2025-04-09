terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = ">= 1.0.0" # Refer to docs for latest version
    }
  }
}

provider "auth0" {
  domain       = "main-tenant.cic-demo-platform.auth0app.com"
  client_id    = "BYie4ua8oR6rRIV4aePhZ3z7O9gDDedJ"
  client_secret = "_4PPgjE87aLWLnCEwWYThxRM-A2lekJ8Njzz8kZutUm_pR-8Xilx1SZxLQZV9zpb"
}