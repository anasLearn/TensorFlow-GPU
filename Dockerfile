FROM tensorflow/tensorflow:2.13.0-gpu

# This specifies the directory to work
WORKDIR /training  

RUN pip install --upgrade pip
RUN pip install --upgrade jupyterlab matplotlib pandas

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
