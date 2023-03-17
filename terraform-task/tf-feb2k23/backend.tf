terraform {
  cloud {
    organization = "mohitkumar79039"

    workspaces {
      name = "test-workspace"
    }
  }
}