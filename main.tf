variable "image_name" {
  description = "Image for the container."
  default = "ghost:latest"
}

variable "container_name" {
  description = "The name of the container."
  default = "ghost_blog"
}

variable "ext_port" {
  description = "The container external port."
  default = "80"
}

resource "docker_image" ghost_image {
  name = "${var.image_name}"
}

resource "docker_container" ghost_container {
  name = "${var.container_name}"
  image = "${var.image_name}"
  ports = {
    internal = "2368"
    external = "${var.ext_port}"
  }
}
