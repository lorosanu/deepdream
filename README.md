# Running deepdream with docker and jupyter notebook

## About

The Dockerfile present in this repository will generate an image that combines:
* the [bvlc/caffe:cpu](https://hub.docker.com/r/bvlc/caffe/) docker image,
* the jupyter notebook app,
* two GoogLeNet models:
  * [BVLC GoogleNet model](https://github.com/BVLC/caffe/tree/master/models/bvlc_googlenet) trained on ImageNet,
  * [Places205 GoogleNet model](http://places.csail.mit.edu/downloadCNN.html) trained on MIT's place dataset.

Google's deepdream notebook has been modified in order to use the local models and images.  
Below you will find instructions on how to quickly try out google's deepdreams.

## Dependencies

* Git
* [Docker Community Edition](https://www.docker.com/community-edition#/download)

## Usage

* Clone this repository

    ```
    $ git clone https://github.com/lorosanu/deepdream.git
    $ cd deepdream
    ```

* Build the 'jupyter-caffe-cpu' Docker image

    ```
    $ docker build -t jupyter-caffe-cpu .
    ```

* Docker-compose launch

    ```
    $ docker-compose up

      Copy/paste this URL into your browser when you connect for the first time,
      to login with a token:
        http://localhost:8888/?token=6a99...
    ```

* The jupyter notebook will be available at `http://localhost:8888/?token=6a99...`

* __Note__: Mac and Windown users will have to find the IP address of docker-machine VM and replace 'localhost' with it. More [here](https://docs.docker.com/docker-for-windows/troubleshoot/#limitations-of-windows-containers-for-localhost-and-published-ports).
