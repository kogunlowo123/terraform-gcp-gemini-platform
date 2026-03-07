module "gemini_platform" {
  source = "../../"

  project_id = "my-gcp-project"
  region     = "us-central1"

  data_store_id          = "basic-data-store"
  data_store_display_name = "Basic Data Store"

  search_engine_id          = "basic-search-engine"
  search_engine_display_name = "Basic Search Engine"

  grounding_bucket_name = "my-project-gemini-grounding-basic"

  enable_dialogflow_agent = false

  labels = {
    environment = "dev"
  }
}
