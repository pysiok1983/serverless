# module "cluster-01" {
#   source     = "github.com/terraform-google-modules/cloud-foundation-fabric//modules/gke-cluster?ref=v19.0.0"
#   project_id = var.project_id
#   name       = var.cluster_name_01
#   location   = var.region
#   vpc_config = {
#     network    = module.vpc.self_link
#     subnetwork = module.vpc.subnet_self_links["${var.region}/${var.subnet_name_01}"]
#     secondary_range_names = {
#       pods     = "pods"
#       services = "services"
#     }

#     master_authorized_ranges = {
#       internal-vms = "188.0.0.0/8"
#       gh-01 = "4.128.0.0/9"
#       gh-02 = "13.64.0.0/10"
#       gh-03 = "20.0.0.0/8"
#       gh-04 = "23.96.0.0/12"
#       gh-05 = "40.64.0.0/10"
#       gh-06 = "52.0.0.0/8"
#       gh-07 = "65.52.0.0/14"
#       gh-08 =  "68.220.0.0/19"
#       gh-09 =  "68.220.32.0/19"
#       gh-10 =  "68.220.128.0/17"
#       gh-11 =  "70.37.0.0/21"
#       gh-12 =  "70.37.8.0/22"
#       gh-13 =  "70.37.16.0/20"
#       gh-14 =  "70.37.32.0/20"
#       gh-15 =  "70.37.48.0/20"
#       gh-16 =  "70.37.64.0/18"
#       gh-17 =  "70.37.160.0/21"
#       gh-18 = "104.40.0.0/13"
#       gh-19 = "104.208.0.0/13"
#       gh-20 = "131.253.0.0/16"
#       gh-21 = "134.170.220.0/23"
#       gh-22 = "134.170.222.0/24"
#       gh-23 = "137.116.0.0/15"
#       gh-24 = "137.135.0.0/18"
#       gh-25 = "137.135.64.0/18"

#       gh-26 = "138.91.64.0/19"
#       gh-27 = "138.91.96.0/19"
#       gh-28 ="138.91.128.0/17"
#       gh-29 = "157.48.0.0/12"
#       gh-30 = "168.60.0.0/14"
#       gh-31 = "172.160.0.0/11"
#       gh-32 =    "191.234.32.0/19" 
#       gh-33 =    "191.236.0.0/18" 
#       gh-34 =    "191.236.64.0/18" 
#       gh-35 =    "191.236.192.0/18" 
#       gh-36 =    "191.237.0.0/17" 
#       gh-37 =    "191.237.128.0/18" 
#       gh-38 =    "191.238.0.0/18" 
#       gh-39 =    "191.238.70.0/23" 
#       gh-40 =    "191.238.144.0/20" 
#       gh-41 =    "191.238.160.0/19" 
#       gh-42 =    "191.238.224.0/19" 
#       gh-43 =    "191.239.0.0/18" 
#       gh-44 =    "191.239.224.0/20" 
#       gh-45 =    "193.149.64.0/21" 
#       gh-46 =    "193.149.72.0/21" 
#       gh-47 =    "199.7.166.8/29" 
#       gh-48 =    "199.7.166.16/28" 
#       gh-49 =    "199.19.85.24/29" 
#       gh-50 =    "199.19.85.32/28" 
#       gh-51 =    "199.19.85.48/28" 
#       gh-52 =    "199.19.85.64/29" 
#       gh-53 =    "199.19.85.80/28" 
#       gh-54 =    "199.19.85.224/29" 
#       gh-55 =    "199.30.16.0/24" 
#       gh-56 =    "199.30.18.0/23" 
#       gh-57 =    "199.30.20.0/24" 
#       gh-58 =    "199.30.22.0/24" 
#       gh-59 =    "199.30.24.0/23" 
#       gh-60 =    "199.30.27.0/25" 
#       gh-61 =    "199.30.27.144/28" 
#       gh-62 =    "199.30.27.160/27" 
#       gh-63 =    "199.30.28.64/26" 
#       gh-64 =    "199.30.28.128/25" 
#       gh-65 =    "199.30.29.0/24" 
#       gh-66 =    "199.30.31.192/26" 
#       gh-67 =    "204.152.18.0/31" 
#       gh-68 =    "204.152.18.8/29" 
#       gh-69 =    "204.152.18.32/27" 
#       gh-70 =    "204.152.18.64/26" 
#       gh-71 =    "204.152.19.0/24" 
#       gh-72 =    "207.46.13.0/24" 
#       gh-73 =    "207.254.3.32/28" 
#       gh-74 =    "207.254.48.0/29" 
#       gh-75 =    "207.254.48.160/28" 
#       gh-76 =    "208.78.110.56/29" 
#       gh-77 =    "208.83.5.64/28" 
#       gh-78 =    "208.83.5.224/29" 
#       gh-79 =    "209.240.212.0/23" 



#     }
#     master_ipv4_cidr_block = "10.255.255.0/28"
#   }
#   max_pods_per_node = 32
#   private_cluster_config = {
#     enable_private_endpoint = false
#     master_global_access    = true
#   }
#   labels = {
#     environment = "prd"
#   }
# }


# module "cluster-01-nodepool-01" {
#   source       = "github.com/terraform-google-modules/cloud-foundation-fabric//modules/gke-nodepool?ref=v19.0.0"
#   project_id   = var.project_id
#   cluster_name = module.cluster-01.name
#   location     = var.region
#   name         = var.node_pool_name_01
#   service_account = {
#     email = module.sa-gke-001.email
#   }
# }



















































# module "gke" {
#   source = "./modules/gke"
#   project   = var.project_id
#   name = var.cluster_name_01
#   location   = var.region
#   depends_on = [module.cluster-01-nodepool-01]
# }


# data "google_client_config" "default" {}
# data "google_container_cluster" "my_cluster" {
#   project   = var.project_id
#   name = var.cluster_name_01
#   location   = var.region
#   #zone = var.zone-01
# }

# provider "kubernetes" {
#   host                   = "https://${data.google_container_cluster.my_cluster.endpoint}"
#   token                  = data.google_client_config.default.access_token
#   cluster_ca_certificate = base64decode(data.google_container_cluster.my_cluster.master_auth[0].cluster_ca_certificate)
# }



# # resource "kubernetes_namespace" "test" {
# #   metadata {
# #     name = "nginx"
# #   }
# # }

# # resource "kubernetes_deployment" "test" {
# #   metadata {
# #     name      = "nginx"
# #     namespace = kubernetes_namespace.test.metadata.0.name
# #   }
# #   spec {
# #     replicas = 2
# #     selector {
# #       match_labels = {
# #         app = "MyTestApp"
# #       }
# #     }
# #     template {
# #       metadata {
# #         labels = {
# #           app = "MyTestApp"
# #         }
# #       }
# #       spec {
# #         container {
# #           image = "nginx"
# #           name  = "nginx-container"
# #           port {
# #             container_port = 80
# #           }
# #         }
# #       }
# #     }
# #   }
# # }

# # resource "kubernetes_service" "test" {
# #   metadata {
# #     name      = "nginx"
# #     namespace = kubernetes_namespace.test.metadata.0.name
# #   }
# #   spec {
# #     selector = {
# #       app = kubernetes_deployment.test.spec.0.template.0.metadata.0.labels.app
# #     }
# #     type = "NodePort"
# #     port {
# #       node_port   = 30201
# #       port        = 80
# #       target_port = 80
# #     }
# #   }
# # }










# resource "kubernetes_ingress_v1" "example_ingress" {
#   metadata {
#     name = "example-ingress"
#     # annotations = {
#     #     "kubernetes.io/ingress.allow-http" = "false"
#     # }
#   }
#   wait_for_load_balancer = true
#   spec {
#     default_backend {
#       service {
#         name = "myapp-1"
#         port {
#           number = 8080
#           #number = 443
#         }
#       }
#     }

#     # rule {
#     #   http {
#     #     path {
#     #       backend {
#     #         service {
#     #           name = "myapp-1"
#     #           port {
#     #             number = 8080
#     #           }
#     #         }
#     #       }

#     #       path = "/*"
#     #     }


#     #   }
#     # }

#     # tls {
#     #   hosts = ["*.example.com", "*.api.example.com"]
#     #   secret_name = "tls-secret"
#     # }
#   }
# }

# resource "kubernetes_service_v1" "example" {
#   metadata {
#     name = "myapp-1"
#   }
#   spec {
#     selector = {
#       #app = kubernetes_pod.example.metadata.0.labels.app
#       app = kubernetes_deployment.test.spec.0.template.0.metadata.0.labels.app
#     }
#     session_affinity = "ClientIP"
#     port {
#       port        = 8080
#       target_port = 80
#     }

#     type = "NodePort"
#   }
# }



# # resource "kubernetes_pod" "example" {
# #   metadata {
# #     name = "terraform-example"
# #     labels = {
# #       app = "myapp-1"
# #     }
# #   }

# #   spec {
# #     container {
# #       image = "nginx:1.7.9"
# #       name  = "example"

# #       port {
# #         container_port = 8080
# #       }
# #     }
# #   }
# # }


# resource "kubernetes_deployment" "test" {
#   metadata {
#     name      = "nginx"
#     #namespace = kubernetes_namespace.test.metadata.0.name
#   }
#   spec {
#     replicas = 2
#     selector {
#       match_labels = {
#         app = "myapp-1"
#       }
#     }
#     template {
#       metadata {
#         labels = {
#           app = "myapp-1"
#         }
#       }
#       spec {
#         container {
#           image = "nginx"
#           name  = "nginx-container"
#           port {
#             container_port = 8080
#           }
#         }
#       }
#     }
#   }
# }