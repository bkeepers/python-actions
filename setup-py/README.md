# setup.py (check & build)

Available with `uses = "ross/python-actions/setup-py/<python-version>@<commit-ish>"` this Action provides an environment in which `setup.py` commands can be run. It allows for packages to be `check`ed and distribution files to be build. 

For more information on setup.py see [Writing the Setup Script](https://docs.python.org/3/distutils/setupscript.html#writing-the-setup-script).

It is based on [3.7-stretch](https://github.com/docker-library/python/blob/38dcdb4320c8668416205e044ee50489c059da18/3.7/stretch/Dockerfile).

### Secrets

Not applicable

### Environment variables

* `APT_PACKAGES` - **Optional**. A list of packages to be install prior to running setup.py commands.
* `WORKDIR` - **Optional**. An alternate working directory to use for running setup.py

### Supported Python Versions

* 3.7
* 2.7
