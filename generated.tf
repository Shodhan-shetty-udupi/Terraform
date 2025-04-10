# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "con_RWM3q0YxRApPlFgB"
resource "auth0_connection" "username_password_authentication" {
  display_name         = null
  is_domain_connection = false
  metadata             = {}
  name                 = "Username-Password-Authentication via terraform"
  realms               = ["Username-Password-Authentication"]
  show_as_button       = null
  strategy             = "auth0"
  options {
    adfs_server            = null
    allowed_audiences      = []
    api_enable_users       = false
    app_id                 = null
    auth_params            = {}
    authorization_endpoint = null
    brute_force_protection = true
    client_id              = null
    client_secret          = null # sensitive
    community_base_url     = null
    configuration          = null # sensitive
    custom_headers         = []
    custom_scripts = {
      change_password = "function changePassword(email, newPassword, callback) {\n  // This script should change the password stored for the current user in your\n  // database. It is executed when the user clicks on the confirmation link\n  // after a reset password request.\n  // The content and behavior of password confirmation emails can be customized\n  // here: https://manage.auth0.com/#/emails\n  // The `newPassword` parameter of this function is in plain text. It must be\n  // hashed/salted to match whatever is stored in your database.\n  //\n  // There are three ways that this script can finish:\n  // 1. The user's password was updated successfully:\n  //     callback(null, true);\n  // 2. The user's password was not updated:\n  //     callback(null, false);\n  // 3. Something went wrong while trying to reach your database:\n  //     callback(new Error(\"my error message\"));\n  //\n  // If an error is returned, it will be passed to the query string of the page\n  // where the user is being redirected to after clicking the confirmation link.\n  // For example, returning `callback(new Error(\"error\"))` and redirecting to\n  // https://example.com would redirect to the following URL:\n  //     https://example.com?email=alice%40example.com&message=error&success=false\n\n  const msg =\n    'Please implement the Change Password script for this database ' +\n    'connection at https://manage.auth0.com/#/connections/database';\n  return callback(new Error(msg));\n}\n"
      create          = "function create(user, callback) {\n  // This script should create a user entry in your existing database. It will\n  // be executed when a user attempts to sign up, or when a user is created\n  // through the Auth0 dashboard or API.\n  // When this script has finished executing, the Login script will be\n  // executed immediately afterwards, to verify that the user was created\n  // successfully.\n  //\n  // The user object will always contain the following properties:\n  // * email: the user's email\n  // * password: the password entered by the user, in plain text\n  // * tenant: the name of this Auth0 account\n  // * client_id: the client ID of the application where the user signed up, or\n  //              API key if created through the API or Auth0 dashboard\n  // * connection: the name of this database connection\n  //\n  // There are three ways this script can finish:\n  // 1. A user was successfully created\n  //     callback(null);\n  // 2. This user already exists in your database\n  //     callback(new ValidationError(\"user_exists\", \"my error message\"));\n  // 3. Something went wrong while trying to reach your database\n  //     callback(new Error(\"my error message\"));\n\n  const msg =\n    'Please implement the Create script for this database connection ' +\n    'at https://manage.auth0.com/#/connections/database';\n  return callback(new Error(msg));\n}\n"
      delete          = "function remove(id, callback) {\n  // This script remove a user from your existing database.\n  // It is executed whenever a user is deleted from the API or Auth0 dashboard.\n  //\n  // There are two ways that this script can finish:\n  // 1. The user was removed successfully:\n  //     callback(null);\n  // 2. Something went wrong while trying to reach your database:\n  //     callback(new Error(\"my error message\"));\n\n  const msg =\n    'Please implement the Delete script for this database ' +\n    'connection at https://manage.auth0.com/#/connections/database';\n  return callback(new Error(msg));\n}\n"
      get_user        = "//This code is for demonstration purposes only. It must never be used in production environments\nfunction getByEmail(email, callback) {\n  var axios = require('axios').default;\n\n  var authOptions = {\n    method: 'POST',\n    url: 'https://demo-platform-migration.us.auth0.com/oauth/token',\n    headers: {\n      'content-type': 'application/x-www-form-urlencoded',\n      'Accept-Encoding': '*',\n    },\n    data: new URLSearchParams({\n      grant_type: 'client_credentials',\n      audience: 'https://demo-platform-migration.us.auth0.com/api/v2/',\n      realm: 'Username-Password-Authentication',\n      client_id: 'y09dIRPyFkkOjhArTQ64QyQY4AfTIcpa',\n      client_secret: configuration.CLIENT_SECRET_GET_USER,\n    }),\n  };\n\n  axios\n    .request(authOptions)\n    .then(function (response) {\n      var getUserOptions = {\n        method: 'GET',\n        url:\n          'https://demo-platform-migration.us.auth0.com/api/v2/users-by-email?email=' +\n          email,\n        headers: { Authorization: 'Bearer ' + response.data.access_token },\n      };\n\n      axios\n        .request(getUserOptions, cb)\n        .then(function (response) {\n          if (response.data.length <= 0) {\n            return callback(null, null);\n          }\n\n          return callback(null, { email: email });\n        })\n        .catch(function (error) {\n          return callback(null, null);\n        });\n    })\n    .catch(function (error) {\n      return callback(null, null);\n    });\n  //This code is for demonstration purposes only. It must never be used in production environments\n}\n"
      login           = "//This code is for demonstration purposes only. It must never be used in production environments\nfunction login(email, password, callback) {\n  var axios = require('axios').default;\n\n  var options = {\n    method: 'POST',\n    url: 'https://demo-platform-migration.us.auth0.com/oauth/token',\n    headers: {\n      'content-type': 'application/x-www-form-urlencoded',\n      'Accept-Encoding': '*',\n    },\n    data: new URLSearchParams({\n      grant_type: 'password',\n      realm: 'Username-Password-Authentication',\n      username: email,\n      password: password,\n      scope: 'openid profile email',\n      client_id: 'OasfKSnsrITStKV5AEC7WsR4AQ6TCjVC',\n      client_secret: configuration.CLIENT_SECRET,\n    }),\n  };\n\n  axios\n    .request(options)\n    .then(function (response) {\n      console.log(response.data);\n      return callback(null, { email: email });\n    })\n    .catch(function (error) {\n      console.error(error);\n      return callback(\n        new WrongUsernameOrPasswordError(\n          email,\n          'Incorrect username/email or password.'\n        )\n      );\n    });\n\n  //This code is for demonstration purposes only. It must never be used in production environments\n}\n"
      verify          = "function verify(email, callback) {\n  // This script should mark the current user's email address as verified in\n  // your database.\n  // It is executed whenever a user clicks the verification link sent by email.\n  // These emails can be customized at https://manage.auth0.com/#/emails.\n  // It is safe to assume that the user's email already exists in your database,\n  // because verification emails, if enabled, are sent immediately after a\n  // successful signup.\n  //\n  // There are two ways that this script can finish:\n  // 1. The user's email was verified successfully\n  //     callback(null, true);\n  // 2. Something went wrong while trying to reach your database:\n  //     callback(new Error(\"my error message\"));\n  //\n  // If an error is returned, it will be passed to the query string of the page\n  // where the user is being redirected to after clicking the verification link.\n  // For example, returning `callback(new Error(\"error\"))` and redirecting to\n  // https://example.com would redirect to the following URL:\n  //     https://example.com?email=alice%40example.com&message=error&success=false\n\n  const msg =\n    'Please implement the Verify script for this database connection ' +\n    'at https://manage.auth0.com/#/connections/database';\n  return callback(new Error(msg));\n}\n"
    }
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
    enabled_database_customization         = true
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
    import_mode                            = true
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
    password_complexity_options {
      min_length = 8
    }
    password_dictionary {
      dictionary = []
      enable     = false
    }
    password_history {
      enable = false
      size   = 5
    }
    password_no_personal_info {
      enable = false
    }
  }
}
