FROM {{cookiecutter.base_image}}

# Copy over & install requirements
COPY requirements.txt /dev/requirements.txt
RUN pip install -r /dev/requirements.txt

# Install unzip
RUN apt-get install -y unzip

# Copy over the custom CSS file
COPY custom.css /root/.ipython/profile_default/static/custom/custom.css

# Expose the port where the Jupyter Notebook will run
EXPOSE 8888

# Run the notebook
CMD ["jupyter", "notebook", "--notebook-dir=/dev/{{cookiecutter.project_slug}}/nbs"]