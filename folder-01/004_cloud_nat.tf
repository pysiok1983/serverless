# resource "google_compute_router" "router" {
#   project = var.project_id
#   name    = "router-01"
#   region  = var.region
#   network = module.vpc.self_link
# }


# resource "google_compute_router_nat" "nat" {
#   name                               = "router-nat-01"
#   project = var.project_id
#   router                             = google_compute_router.router.name
#   region                             = var.region
#   nat_ip_allocate_option             = "AUTO_ONLY"
#   source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
# }



# resource "google_compute_firewall" "default" {
#   name    = "test-firewall"
#   project = var.project_id
#   network = module.vpc.self_link

#   allow {
#     protocol = "tcp"
#     ports    = ["22"]
#   }

#   target_tags = ["ssh"]
#   source_ranges = ["35.235.240.0/20"]
# }

