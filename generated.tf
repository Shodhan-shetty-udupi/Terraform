# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "con_UL9N3GgUWI5MRGa2"
resource "auth0_connection" "testdb" {
  display_name         = null
  is_domain_connection = false
  metadata             = {}
  name                 = "testDb"
  realms               = ["testDb"]
  show_as_button       = null
  strategy             = "auth0"
  options {
    adfs_server                            = null
    allowed_audiences                      = []
    api_enable_users                       = false
    app_id                                 = null
    auth_params                            = {}
    authorization_endpoint                 = null
    brute_force_protection                 = true
    client_id                              = null
    client_secret                          = null # sensitive
    community_base_url                     = null
    configuration                          = null # sensitive
    custom_headers                         = []
    custom_scripts                         = {}
    debug                                  = false
    digest_algorithm                       = null
    disable_cache                          = false
    disable_self_service_change_password   = false
    disable_sign_out                       = false
    disable_signup                         = false
    discovery_url                          = null
    domain                                 = null
    domain_aliases                         = []
    enable_script_context                  = false
    enabled_database_customization         = false
    entity_id                              = null
    fed_metadata_xml                       = null
    fields_map                             = null
    forward_request_info                   = false
    from                                   = null
    gateway_url                            = null
    global_token_revocation_jwt_iss        = null
    global_token_revocation_jwt_sub        = null
    icon_url                               = null
    identity_api                           = null
    import_mode                            = false
    ips                                    = []
    issuer                                 = null
    jwks_uri                               = null
    key_id                                 = null
    map_user_id_to_id                      = false
    max_groups_to_retrieve                 = null
    messaging_service_sid                  = null
    metadata_url                           = null
    metadata_xml                           = null
    name                                   = null
    non_persistent_attrs                   = []
    password_policy                        = "good"
    ping_federate_base_url                 = null
    pkce_enabled                           = false
    precedence                             = []
    protocol_binding                       = null
    provider                               = null
    realm_fallback                         = false
    request_template                       = null
    requires_username                      = false
    scopes                                 = []
    scripts                                = {}
    set_user_root_attributes               = null
    should_trust_email_verified_connection = null
    sign_in_endpoint                       = null
    sign_out_endpoint                      = null
    sign_saml_request                      = false
    signature_algorithm                    = null
    signing_cert                           = null
    strategy_version                       = 2
    subject                                = null
    syntax                                 = null
    team_id                                = null
    template                               = null
    tenant_domain                          = null
    token_endpoint                         = null
    twilio_sid                             = null
    twilio_token                           = null # sensitive
    type                                   = null
    upstream_params                        = null
    use_cert_auth                          = false
    use_kerberos                           = false
    use_wsfed                              = false
    user_id_attribute                      = null
    userinfo_endpoint                      = null
    waad_common_endpoint                   = false
    waad_protocol                          = null
    attributes {
      email {
        profile_required    = true
        verification_method = "link"
        identifier {
          active = true
        }
        signup {
          status = "required"
          verification {
            active = true
          }
        }
      }
    }
    authentication_methods {
      passkey {
        enabled = false
      }
      password {
        enabled = true
      }
    }
    mfa {
      active                 = true
      return_enroll_settings = true
    }
    passkey_options {
      challenge_ui                   = "both"
      local_enrollment_enabled       = true
      progressive_enrollment_enabled = true
    }
  }
}
