# CoCalc GPU Atlas

This is a fork from emilioj's CuCalc, which is itself a fork from the original ktaletsk's CuCalc, but emilioj's was more up to date.
On this image I intend to add some dependencies to work with CERN/ATLAS data.

The original description from ktaletsk's repository is below:

This is Docker container build on top of CoCalc image (https://github.com/sagemathinc/cocalc-docker) to add support of CUDA for GPU programming. My use is running it on my dedicated desktop computer with GPU and access from laptop anywhere.

Also added CUDNN and Tensorflow required stuff.

Prerequisites:
+ Docker
+ nvidia-docker (https://github.com/NVIDIA/nvidia-docker).

To build image, type

    sudo make build
    
To run container, type

    sudo make run
    
To stop container, type

    sudo make stop
    
To start again, type

    sudo make start
    
