output "data_store_id" {
  description = "The ID of the Discovery Engine data store"
  value       = google_discovery_engine_data_store.this.data_store_id
}

output "data_store_name" {
  description = "The full resource name of the data store"
  value       = google_discovery_engine_data_store.this.name
}

output "search_engine_id" {
  description = "The ID of the Discovery Engine search engine"
  value       = google_discovery_engine_search_engine.this.engine_id
}

output "search_engine_name" {
  description = "The full resource name of the search engine"
  value       = google_discovery_engine_search_engine.this.name
}

output "dialogflow_agent_id" {
  description = "The ID of the Dialogflow CX agent"
  value       = var.enable_dialogflow_agent ? google_dialogflow_cx_agent.this[0].id : null
}

output "dialogflow_agent_name" {
  description = "The full resource name of the Dialogflow CX agent"
  value       = var.enable_dialogflow_agent ? google_dialogflow_cx_agent.this[0].name : null
}

output "dialogflow_agent_start_flow" {
  description = "The start flow of the Dialogflow CX agent"
  value       = var.enable_dialogflow_agent ? google_dialogflow_cx_agent.this[0].start_flow : null
}

output "grounding_bucket_name" {
  description = "The name of the Cloud Storage grounding bucket"
  value       = google_storage_bucket.grounding.name
}

output "grounding_bucket_url" {
  description = "The URL of the Cloud Storage grounding bucket"
  value       = google_storage_bucket.grounding.url
}

output "grounding_bucket_self_link" {
  description = "The self link of the Cloud Storage grounding bucket"
  value       = google_storage_bucket.grounding.self_link
}
