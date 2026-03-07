# ---------------------------------------------------------------------------------------------------------------------
# Cloud Storage bucket for grounding data
# ---------------------------------------------------------------------------------------------------------------------
resource "google_storage_bucket" "grounding" {
  project                     = var.project_id
  name                        = var.grounding_bucket_name
  location                    = var.grounding_bucket_location
  storage_class               = var.grounding_bucket_storage_class
  uniform_bucket_level_access = var.grounding_bucket_uniform_access
  labels                      = local.default_labels

  versioning {
    enabled = var.grounding_bucket_versioning
  }

  force_destroy = false
}

# ---------------------------------------------------------------------------------------------------------------------
# Discovery Engine Data Store
# ---------------------------------------------------------------------------------------------------------------------
resource "google_discovery_engine_data_store" "this" {
  project                    = var.project_id
  location                   = local.location
  data_store_id              = var.data_store_id
  display_name               = var.data_store_display_name
  industry_vertical          = var.data_store_industry_vertical
  content_config             = var.data_store_content_config
  solution_types             = ["SOLUTION_TYPE_SEARCH"]
}

# ---------------------------------------------------------------------------------------------------------------------
# Discovery Engine Search Engine
# ---------------------------------------------------------------------------------------------------------------------
resource "google_discovery_engine_search_engine" "this" {
  project        = var.project_id
  location       = local.location
  engine_id      = var.search_engine_id
  display_name   = var.search_engine_display_name
  data_store_ids = [google_discovery_engine_data_store.this.data_store_id]
  collection_id  = "default_collection"

  search_engine_config {
    search_tier    = "SEARCH_TIER_ENTERPRISE"
    search_add_ons = ["SEARCH_ADD_ON_LLM"]
  }

  common_config {
    company_name = var.search_engine_display_name
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# Dialogflow CX Agent for Agent Builder
# ---------------------------------------------------------------------------------------------------------------------
resource "google_dialogflow_cx_agent" "this" {
  count = var.enable_dialogflow_agent ? 1 : 0

  project                    = var.project_id
  location                   = local.location
  display_name               = var.dialogflow_agent_display_name
  default_language_code      = var.dialogflow_agent_default_language_code
  time_zone                  = var.dialogflow_agent_time_zone
  enable_stackdriver_logging = true
  enable_spell_correction    = true

  speech_to_text_settings {
    enable_speech_adaptation = true
  }
}
