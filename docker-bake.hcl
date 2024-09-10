variable "CADDY_VERSION" {
  default = "2"
}

target "docker-metadata-action" {}

target "default" {
  inherits = [ "docker-metadata-action" ]
  context = "."
  dockerfile = "Dockerfile"
  args = {
    CADDY_VERSION = "${CADDY_VERSION}"
  }
  platforms = [
    "linux/amd64",
    "linux/arm64",
  ]
}

target "default-dev" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    CADDY_VERSION = "${CADDY_VERSION}"
  }
  tags = [
    "soramitsukhmer-lab/badges:dev"
  ]
}
