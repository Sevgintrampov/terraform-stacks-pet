deployment "simple" {
  inputs = {
    prefix    = "simple"
    instances = 4
    length    = "2"
    separator = "-"
  }
}

deployment "complex" {
  inputs = {
    prefix    = "complex"
    instances = 6
    length    = "3"
    separator = "-"
  }
}
publish_output "complex_pet" {
  description = "The list of generated pet names for the complex deployment."
  value       = deployment.complex.pet_name
}

publish_output "simple_pet" {
  description = "The generated pet name for the simple deployment."
  value       = deployment.simple.pet_name
}
