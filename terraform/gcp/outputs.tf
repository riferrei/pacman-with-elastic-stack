###########################################
################# Outputs #################
###########################################

output "Game" {
  value = "https://${google_storage_bucket.pacman.name}.storage.googleapis.com/index.html"
}

output "Kibana" {
  value = ec_deployment.elasticsearch.kibana[0].https_endpoint
}

output "Username" {
  value = ec_deployment.elasticsearch.elasticsearch_username
}

output "Password" {
  value = ec_deployment.elasticsearch.elasticsearch_password
}

/****** Debugging the API Key *******

output "Debugging_ApiKey" {
  value = data.external.apikey.result
}

*************************************/