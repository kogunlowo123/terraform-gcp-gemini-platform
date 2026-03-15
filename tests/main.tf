module "test" {
  source = "../"

  project_id = "test-project-id"
  region     = "us-central1"

  data_store_id                = "test-gemini-data-store"
  data_store_display_name      = "Test Gemini Data Store"
  data_store_industry_vertical = "GENERIC"
  data_store_content_config    = "CONTENT_REQUIRED"

  search_engine_id           = "test-gemini-search-engine"
  search_engine_display_name = "Test Gemini Search Engine"
  search_engine_type         = "SEARCH"

  enable_dialogflow_agent                 = true
  dialogflow_agent_display_name           = "test-gemini-agent"
  dialogflow_agent_default_language_code  = "en"
  dialogflow_agent_time_zone              = "America/New_York"

  grounding_bucket_name           = "test-project-gemini-grounding"
  grounding_bucket_location       = "US"
  grounding_bucket_storage_class  = "STANDARD"
  grounding_bucket_uniform_access = true
  grounding_bucket_versioning     = true

  labels = {
    environment = "test"
    managed_by  = "terraform"
  }
}
