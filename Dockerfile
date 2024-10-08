FROM tensorflow/tensorflow:2.13.0-gpu

# Set environment variable to suppress TensorFlow warnings and Errors
ENV TF_CPP_MIN_LOG_LEVEL=3

# This specifies the directory to work
WORKDIR /training  

RUN pip install --upgrade pip
RUN pip install --upgrade jupyterlab matplotlib pandas scikit-learn seaborn

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
