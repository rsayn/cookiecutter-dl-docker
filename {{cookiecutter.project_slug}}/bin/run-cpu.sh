#!/bin/bash

BASE_DIR=$(pwd)/${1:-{{cookiecutter.project_slug}}}

if [[ ! -d $BASE_DIR ]]
then
    SCRIPT_DIR=$(dirname "$(realpath $0)")
    echo < $SCRIPT_DIR/usage.txt
fi

echo "Mounting base directory $BASE_DIR into the container..."

# Run the container, exposing the port
docker run \
    -p 8888:8888 \
    --mount type=bind,source="$BASE_DIR",target=/proj/{{cookiecutter.project_slug}} \
    {{cookiecutter.output_image}}