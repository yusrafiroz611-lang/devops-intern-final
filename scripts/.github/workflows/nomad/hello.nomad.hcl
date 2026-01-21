job "hello-devops" {
  type = "service"
  group "app" {
    count = 1
    task "python-app" {
      driver = "docker"
      config {
        image = "your-docker-image:latest"
      }
      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
