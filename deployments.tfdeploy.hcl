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
publish_output "complex-pet" {
  description = "The list of generated pet names for the complex deployment."
  value       = deployment.complex.outputs.pet-name
}

publish_output "simple-pet" {
  description = "The generated pet name for the simple deployment."
  value       = deployment.simple.outputs.pet-name
}
