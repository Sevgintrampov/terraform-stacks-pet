deployment "simple" {
  inputs = {
    prefix    = "simple"
    instances = 1
    length    = "4"
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
