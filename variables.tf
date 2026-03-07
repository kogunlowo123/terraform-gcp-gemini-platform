variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region for resources"
  type        = string
  default     = "us-central1"
}

variable "data_store_id" {
  description = "The ID of the Discovery Engine data store"
  type        = string
}

variable "data_store_display_name" {
  description = "Display name for the Discovery Engine data store"
  type        = string
  default     = "gemini-data-store"
}

variable "data_store_industry_vertical" {
  description = "Industry vertical for the data store"
  type        = string
  default     = "GENERIC"
}

variable "data_store_content_config" {
  description = "Content config for the data store"
  type        = string
  default     = "CONTENT_REQUIRED"
}

variable "search_engine_id" {
  description = "The ID of the Discovery Engine search engine"
  type        = string
}

variable "search_engine_display_name" {
  description = "Display name for the search engine"
  type        = string
  default     = "gemini-search-engine"
}

variable "dialogflow_agent_display_name" {
  description = "Display name for the Dialogflow CX agent"
  type        = string
  default     = "gemini-agent"
}

variable "dialogflow_agent_default_language_code" {
  description = "Default language code for the Dialogflow CX agent"
  type        = string
  default     = "en"
}

variable "dialogflow_agent_time_zone" {
  description = "Time zone for the Dialogflow CX agent"
  type        = string
  default     = "America/New_York"
}

variable "grounding_bucket_name" {
  description = "Name of the Cloud Storage bucket for grounding data"
  type        = string
}

variable "grounding_bucket_location" {
  description = "Location for the grounding bucket"
  type        = string
  default     = "US"
}

variable "grounding_bucket_storage_class" {
  description = "Storage class for the grounding bucket"
  type        = string
  default     = "STANDARD"
}

variable "grounding_bucket_uniform_access" {
  description = "Enable uniform bucket-level access"
  type        = bool
  default     = true
}

variable "grounding_bucket_versioning" {
  description = "Enable versioning on the grounding bucket"
  type        = bool
  default     = true
}

variable "labels" {
  description = "Labels to apply to all resources"
  type        = map(string)
  default     = {}
}

variable "enable_dialogflow_agent" {
  description = "Whether to create the Dialogflow CX agent"
  type        = bool
  default     = true
}

variable "search_engine_type" {
  description = "The type of search engine (SEARCH_ENGINE_TYPE_UNSPECIFIED, SEARCH, RECOMMENDATION, CHAT)"
  type        = string
  default     = "SEARCH"
}
