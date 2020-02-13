#!/bin/bash

BASE_DIR=$(pwd)/

# Builds the root folder Dockerfile
docker build -t {{cookiecutter.output_image}} $BASE_DIR