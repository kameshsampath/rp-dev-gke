resource "google_service_account" "redpanda_sa" {
  account_id   = var.redpanda_runner_sa
  display_name = "Service Account that will be used by Redpanda Cluster"
}

resource "google_service_account_iam_binding" "workload_identity_iam" {
  service_account_id = google_service_account.redpanda_sa.name
  role               = "roles/iam.workloadIdentityUser"

  members = [
    "serviceAccount:${var.gcp_project}.svc.id.goog[${var.redpanda_namespace}/${var.redpanda_runner_sa}]",
  ]
}
