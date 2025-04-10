# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "Ra2yoYu8Q60EzrimIe2g8G5CNHqeq4wh"
resource "auth0_client" "regular_app" {
  allowed_clients                       = []
  allowed_logout_urls                   = []
  allowed_origins                       = []
  app_type                              = "regular_web"
  callbacks                             = ["http://localhost:4000"]
  client_aliases                        = []
  client_metadata                       = {}
  compliance_level                      = null
  cross_origin_auth                     = false
  cross_origin_loc                      = null
  custom_login_page                     = null
  custom_login_page_on                  = true
  description                           = null
  form_template                         = null
  grant_types                           = ["authorization_code", "implicit", "refresh_token", "client_credentials"]
  initiate_login_uri                    = null
  is_first_party                        = true
  is_token_endpoint_ip_header_trusted   = false
  logo_uri                              = null
  name                                  = "Regular App"
  oidc_conformant                       = true
  organization_require_behavior         = null
  organization_usage                    = null
  require_proof_of_possession           = false
  require_pushed_authorization_requests = false
  sso                                   = false
  sso_disabled                          = false
  web_origins                           = []
  default_organization {
    disable         = true
    flows           = []
    organization_id = null
  }
  jwt_configuration {
    alg                 = "RS256"
    lifetime_in_seconds = 36000
    scopes              = {}
    secret_encoded      = false
  }
  native_social_login {
    apple {
      enabled = false
    }
    facebook {
      enabled = false
    }
    google {
      enabled = false
    }
  }
  refresh_token {
    expiration_type              = "non-expiring"
    idle_token_lifetime          = 2592000
    infinite_idle_token_lifetime = true
    infinite_token_lifetime      = true
    leeway                       = 0
    rotation_type                = "non-rotating"
    token_lifetime               = 31557600
  }
}
