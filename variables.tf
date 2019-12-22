variable "image_name" {
  default = "ghost:latest"
  description = "Image for container"
}

variable "container_name" {
  default = "ghost_container"
  description = "The name of the container"
}

variable "ext_port" {
  default = "80"
  description = "External port of the contaier"
}

