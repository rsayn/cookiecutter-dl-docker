FROM {{cookiecutter.base_image}}

# Copy over & install requirements
RUN mkdir -p /proj
COPY requirements.txt /proj/requirements.txt
WORKDIR /proj
RUN pip install -r requirements.txt

# Install unzip
RUN apt-get install -y unzip

{%- if cookiecutter.install_jupyter == "yes" %}
# Install Jupyter + extensions
RUN pip install jupyter notebook ipywidgets
RUN pip install jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --user
{%- endif -%}

# Copy over the custom CSS file
COPY custom.css /root/.ipython/profile_default/static/custom/custom.css

# Expose the port where the Jupyter Notebook will run
EXPOSE 8888

# Run the notebook
CMD ["jupyter", "notebook", "--notebook-dir=/proj/{{cookiecutter.project_slug}}/nbs"]