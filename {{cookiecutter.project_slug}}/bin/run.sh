#!/bin/bash

BASE_DIR=$(pwd)/${1:-{{cookiecutter.project_slug}}}

if [[ ! -d $BASE_DIR ]]
then
    SCRIPT_DIR=$(dirname "$(realpath $0)")
    echo < $SCRIPT_DIR/usage.txt
fi

echo "Mounting base directory $BASE_DIR into the container..."

#  Fork a process to open a new browser tab
{%if cookiecutter.environment == "jupyterlab"-%}
sleep 4 && xdg-open http://localhost:8888/lab &
{%-endif%}

{%if cookiecutter.environment == "jupyter"-%}
sleep 4 && xdg-open http://localhost:8888 &
{%-endif%}

# Run the container, exposing the port
docker run \
    --rm \
    {% if cookiecutter.target_processor == "gpu" -%}
    --ipc=host \
    --gpus all \
    {%- endif %}
    -p 8888:8888 -p 8787:8787 -p 8786:8786 -p 9091:22 \
    --mount type=bind,source="$BASE_DIR",target=/proj/{{cookiecutter.project_slug}} \
    {{cookiecutter.output_image}}
    &
