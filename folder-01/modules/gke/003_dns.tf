# resource "google_dns_record_set" "a" {
#   project = var.project_id
#   name         = "bac.gcp.staritcloud.pl."
#   managed_zone = "rs-zone"
#   type         = "A"
#   ttl          = 300

#   rrdatas = [ kubernetes_ingress_v1.example_ingress.status.0.load_balancer.0.ingress.0.ip ] 
# }