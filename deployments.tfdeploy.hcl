deployment "simple" {
  inputs = {
    prefix    = "simple"
    instances = 1
    length    = "2"
    separator = "-"
  }
}

deployment "complex" {
  inputs = {
    prefix    = "complex"
    instances = 3
    length    = "3"
    separator = "-"
  }
}
publish_output "vpc_id_network" {
  description = "The networking Stack's VPC's ID."
  value       = deployment.complex.pet-name
}
publish_output "vpc_id_network" {
  description = "The networking Stack's VPC's ID."
  value       = deployment.simple.pet-name
}
