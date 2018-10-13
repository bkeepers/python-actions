## twine (package upload)

Available with `uses = "ross/python-actions/twine@<commit-ish>"` this Action provides an environment in which `twine` command can be run. It allows distribution files to be uploaded to [PyPi](https://pypi.python.org) or alternative repositories.

See the [twine project](https://pypi.org/project/twine/) for more information.

### Secrets

* `TWINE_USERNAME` - **Required**. The username to use when authenticating with the repository.
* `TWINE_PASSWORD` - **Required**. The password to use when authenticating with the repository.

### Environment variables

* `TWINE_REPOSITORY_URL` - **Optional**. To specify an alternate target repository
