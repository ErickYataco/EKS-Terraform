resource "local_file" "config-map" {
  content  = "${local.config-map-aws-auth}"
  filename = "config-map.yaml"
}

resource "local_file" "config" {
  content  = "${local.kubeconfig}"
  filename = "config.local"
}


# resource "null_resource" "kubectl_config" {
#     provisioner "local-exec" {
#     command = <<EOT
#         ./run.sh $repoUrl
#     EOT 
#     environment = {
#       repoUrl = "git@github.com:ErickYataco/flux-istio-kustomize-app"
#     }
#   }
#   depends_on = [local_file.config,local_file.config-map]  
# }