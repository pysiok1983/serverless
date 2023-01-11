data "google_client_config" "default" {

}

data "google_container_cluster" "my_cluster" {
  project   = var.project_id
  name = var.cluster_name_01 
  location   = var.region

}

provider "kubernetes" {
  host                   = "https://${data.google_container_cluster.my_cluster.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(data.google_container_cluster.my_cluster.master_auth[0].cluster_ca_certificate)
}








resource "kubernetes_ingress_v1" "example_ingress" {
  metadata {
    name = "example-ingress"

  }
  wait_for_load_balancer = true
  spec {
    default_backend {
      service {
        name = "myapp-1"
        port {
          number = 8080
        }
      }
    }

  }
}

resource "kubernetes_service_v1" "example" {
  metadata {
    name = "myapp-1"
  }
  spec {
    selector = {
      app = kubernetes_deployment.test.spec.0.template.0.metadata.0.labels.app
    }
    session_affinity = "ClientIP"
    port {
      port        = 8080
      target_port = 80
    }

    type = "NodePort"
  }
}

resource "kubernetes_deployment" "test" {
  metadata {
    name      = "nginx"

  }
  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "myapp-1"
      }
    }
    template {
      metadata {
        labels = {
          app = "myapp-1"
        }
      }
      spec {
        container {
          image = "nginx"
          name  = "nginx-container"
          port {
            container_port = 8080
          }
        }
      }
    }
  }
}