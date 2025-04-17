# __generated__ by Terraform from "kBU7VfUX8c6sgL4ADWRkRsPBdOvLBtG4"
resource "auth0_client" "single_page_app_1" {
  allowed_clients                       = []
  allowed_logout_urls                   = []
  allowed_origins                       = []
  app_type                              = "spa"
  callbacks                             = var.callbacks
  client_aliases                        = []
  client_metadata                       = {}
  compliance_level                      = null
  cross_origin_auth                     = false
  cross_origin_loc                      = null
  custom_login_page                     = null
  custom_login_page_on                  = true
  description                           = null
  form_template                         = null
  grant_types                           = ["implicit", "refresh_token", "password", "http://auth0.com/oauth/grant-type/password-realm", "http://auth0.com/oauth/grant-type/mfa-oob", "http://auth0.com/oauth/grant-type/mfa-otp", "http://auth0.com/oauth/grant-type/mfa-recovery-code"]
  initiate_login_uri                    = null
  is_first_party                        = true
  is_token_endpoint_ip_header_trusted   = false
  logo_uri                              = "https://cc-prod.scene7.com/is/image/CCProdAuthor/mascot-logo-design_P1_900x420?$pjpeg$&jpegSize=200&wid=900"
  name                                  = "Single_page_app_1"
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

}

