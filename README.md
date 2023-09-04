# Introduction
Using this docker image, you can make TensorFlow-2.13.0 use GPU when training NN models.

# Prerequisties:
* Windows 10 or 11
* WSL 2
* Docker using WSL engine
* NVIDIA Graphics Card compatible with TensorFlow ([See List](https://developer.nvidia.com/cuda-gpus))
* NVIDIA driver installed


# Usage:
Define the folder where you have your projects files in the file `.env`. In the example attached, all the notebook and training data will be in a folder `training/` in the Docker host machine.

Run:
```
$ docker compose up
```

Open **Jupyterlab** from the link appearing in the console `localhost:8888/lab?token=some-token`

Now, when training your Neural Network model, tensorflow will use the GPU.

# Credits:
This current repo is based on the following repo: **[tensorflow-knuggies](https://github.com/KNuggies/tensorflow-knuggies)**.