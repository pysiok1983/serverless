from diagrams import Diagram
from diagrams.k8s.compute import Deployment, Pod, ReplicaSet
from diagrams.k8s.network import Ingress, Service
from diagrams.gcp.network import LoadBalancing, Armor


with Diagram("Exposed Pod with 2 Replicas", show=False):
    net = Armor("WAF") >> LoadBalancing("LB: http://bac.gcp.staritcloud.pl") >> Ingress("ing") >> Service("svc")
    net >> [Pod("nginx"),
            Pod("nginx")] 