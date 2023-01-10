# resource "google_compute_security_policy" "policy" {
#   name = "my-policy"
#   project = var.project_id

#   rule {
#     action   = "allow"
#     priority = "1000"
#     match {
#       versioned_expr = "SRC_IPS_V1"
#       config {
#         src_ip_ranges = ["188.47.69.119/32"]
#       }
#     }
#     description = "Allow access to IPs in 188.47.69.119/32"
#   }

#   rule {
#     action   = "allow"
#     priority = "1010"
#     match {
#       versioned_expr = "SRC_IPS_V1"
#       config {
#         src_ip_ranges = ["134.238.135.14/32"]
#       }
#     }
#     description = "Allow access to Michal"
#   }

#   rule {
#     action   = "deny(403)"
#     priority = "2147483647"
#     match {
#       versioned_expr = "SRC_IPS_V1"
#       config {
#         src_ip_ranges = ["*"]
#       }
#     }
#     description = "default rule"
#   }
# }






























# data "google_compute_backend_service" "bck" {
#   project = var.project_id
#   name = "k8s-be-32384--578917777ac2cbd0"
# }


# data "kubernetes_ingress_v1" "example" {
#   metadata {
#     name = "example-ingress"
#   }
# }