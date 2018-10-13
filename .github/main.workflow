workflow "check, sdist, and upload" {
  on = "push"
  resolves = ["upload"]
}

action "check" {
  uses = "./setup-py/3.7/"
  args = "check"
  env = {
    WORKDIR = "example"
  }
}

action "sdist" {
  uses = "./setup-py/3.7/"
  args = "sdist"
  env = {
    WORKDIR = "example"
  }
  needs = "check"
}

action "upload" {
  uses = "./twine"
  args = "upload ./example/dist/ross-pypi-test-*.tar.gz"
  secrets = ["TWINE_PASSWORD", "TWINE_USERNAME"]
  needs = "sdist"
}
