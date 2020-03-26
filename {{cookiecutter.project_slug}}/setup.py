import os
from setuptools import setup, find_packages

def build_project():
    "Builds the project using `setuptools.setup`"
    os.chdir('{{cookiecutter.project_slug}}')
    version = '<project-version>'
    if version == '<project-version>':
        print('You should customize project variables inside setup.py before trying to build this project.')
        return

    setup(name='{{cookiecutter.project_slug}}',
        version=version,
        url='<project-url>',
        license='<license>',
        author='<author>',
        author_email='<author-email>',
        description='<project-description>',
        packages=find_packages(),
        install_requires=[{{cookiecutter.requirements.split(",").map('quote').join(", ")}}],
        long_description=open('README.md').read(),
        zip_safe=False)


if __name__ == '__main__':
    build_project()