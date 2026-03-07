module "gemini_platform" {
  source = "../../"

  project_id = "my-gcp-project"
  region     = "us-central1"

  # Data Store configuration
  data_store_id                = "complete-data-store"
  data_store_display_name      = "Complete Data Store"
  data_store_industry_vertical = "GENERIC"
  data_store_content_config    = "CONTENT_REQUIRED"

  # Search Engine configuration
  search_engine_id          = "complete-search-engine"
  search_engine_display_name = "Complete Search Engine"
  search_engine_type         = "SEARCH"

  # Grounding bucket configuration
  grounding_bucket_name          = "my-project-gemini-grounding-complete"
  grounding_bucket_location      = "US"
  grounding_bucket_storage_class = "STANDARD"
  grounding_bucket_uniform_access = true
  grounding_bucket_versioning     = true

  # Dialogflow CX Agent configuration
  enable_dialogflow_agent                = true
  dialogflow_agent_display_name          = "Complete Gemini Agent"
  dialogflow_agent_default_language_code = "en"
  dialogflow_agent_time_zone             = "America/New_York"

  labels = {
    environment = "production"
    team        = "ai-platform"
    cost_center = "ml-ops"
  }
}
