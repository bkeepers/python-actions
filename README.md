# GitHub Actions for Python packaging and distribution

These Actions support building [Python](https://www.python.org/) packages with setup.py and uploading them to [PyPi](https://pypi.python.org) or alternate repositories using the [twine](https://pypi.org/project/twine/) utility.

## setup.py (check & build)

See [setup-py README](setup-py/README.md) for usage details.

## twine (package upload)

See [twine README](twine/README.md) for usage details.

## Usage

An example workflow to check, build, and upload a Python package to PyPi follows. `<python-version>` should be replaced with a [supported version](#supported-python-versions) and `<commit-ish>` should generally be replaced with a release tag e.g. `rel-0.0.1` or a commit sha e.g.  `aa63e12e998c56713d9cbba3ddf211281db3178f` or `aa63e12` for short. Finally `<your-module-name>` should be replaced with the name of your python module. It is possible to upload multiple files and to customize other options, see the [twine docs](https://pypi.org/project/twine/) for more information.

```hcl
workflow "check, sdist, and upload" {
  on = "push"
  resolves = ["upload"]
}

action "tag-filter" {
  uses = "docker://alpine"
  args = ["sh", "-c", "echo $GITHUB_REF | grep -Eq refs/tags.*"]
}

action "check" {
  uses = "ross/python-actions/setup-py/<python-version>@<commit-ish>"
  args = "check"
  needs = "tag-filter"
}

action "sdist" {
  uses = "ross/python-actions/setup-py/<python-version>@<commit-ish>"
  args = "sdist"
  needs = "check"
}

action "upload" {
  uses = "ross/python-actions/twine@<commit-ish>"
  args = "upload ./dist/<your-module-name>-*.tar.gz"
  secrets = ["TWINE_PASSWORD", "TWINE_USERNAME"]
  needs = "sdist"
}
```

## License

The Dockerfiles and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
