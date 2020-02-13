# Deep Learning with Docker

A boilerplate used to scaffold projects running on Nvidia-Docker (or even traditional Docker) with both source code and Jupyter notebooks.

## Getting started

To create a new project from this template, install `cookiecutter`:

```bash
pip install cookiecutter
```

Then add the following to your `.bashrc` file:

```bash
EXPORT PATH=$HOME/.local/bin:$PATH
```

Then you can run cookiecutter as follows:

```bash
cookiecutter gh:rsayn/cookiecutter-dl-docker -o <target-folder>
```

Cookiecutter will prompt you for some configuration values, e.g. the project name, package requirements and whether to use CPU or GPU to run the container.

Note: requirements should be provided in a comma-separated form as follows:

```bash
sklearn,pipenv,numpy,pandas
```