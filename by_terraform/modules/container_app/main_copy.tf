resource "azurerm_container_app" "container_app" {
  name                         = var.container_app_name
  container_app_environment_id = var.container_app_environment_id
  resource_group_name          = var.resource_group_name
  revision_mode                = "Single"

  identity {
    type         = "UserAssigned"
    identity_ids = [var.user_assigned_identity_id]
  }


  ingress {
    external_enabled = true
    target_port      = 8000
    transport        = "auto"

    traffic_weight {
      percentage = 100
      latest_revision = true
    }
  }

  registry {
    server   = var.login_server
    identity = var.user_assigned_identity_id
  }

  template {
    container {
      name   = var.container_name
      image  = "${var.login_server}/api:latest"
      cpu    = 0.5
      memory = "1Gi"


      env {
        name = "AZ_SPEECH_KEY"
        value = "?????"
      }

      env {
        name = "AZ_SPEECH_ENDPOINT"
        value = "??????"
      }

      env {
        name = "AZ_OPENAI_KEY"
        value = "?????"
      }

      env {
        name = "AZ_OPENAI_ENDPOINT"
        value  = "?????"
      }

      env {
       name =  "AZ_BLOB_CONNECTION"
       value = "?????"     
      }

      env {
       name = "CLIENT_ID"
       value = "?????"
      }

      env {
       name = "CLIENT_SECRET"
       value = "?????"
      }

      env {
       name = "TENANT_ID"
       value = "?????"
      }

    }
  }
}
