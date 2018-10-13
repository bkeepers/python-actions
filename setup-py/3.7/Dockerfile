FROM python:3.7-stretch

LABEL version="0.0.1"
LABEL repository="http://github.com/ross/python-actions"
LABEL homepage="http://github.com/ross/python-actions"
LABEL maintainer="Ross McFarland <ross@github.com>"
LABEL com.github.actions.name="GitHub Action for setup.py using Python 3.7"
LABEL com.github.actions.description="Action that enables building and testing of Python 3.7 packages "
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"
COPY entrypoint.sh /entrypoint.sh

WORKDIR /workspace
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help-commands"]
