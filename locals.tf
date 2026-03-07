locals {
  default_labels = merge(var.labels, {
    managed_by = "terraform"
    module     = "gemini-platform"
  })

  location = var.region

  data_store_full_id = "projects/${var.project_id}/locations/${local.location}/collections/default_collection/dataStores/${var.data_store_id}"
}
