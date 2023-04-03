### CircleCI Badge
[![CircleCI](https://circleci.com/gh/chuquikun/project-ml-microservices-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/chuquikun/project-ml-microservices-kubernetes?branch=main)

## Project Overview

The goal of this project is to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

Using docker, kubernetes and CircleCI you need to  operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls.

## Running Instruction

### Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. 

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies
* Additionally install `hadolint` with the following commnads:

```bash
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
chmod +x /bin/hadolint
```

* You need to install `kubectl` and `minikube` in order to run the application in a local cluster, so first of all
start your kubernetes cluster usign `minikube start --driver=docker`, once the cluster is up run the following command to start the application.

```bash
./run_kubernetes.sh
```

* Finally you can make predictions using the script make_predictions.sh

```bash
./make_predicitons.sh
```

### Files

* .circleci/config.yml : integration with circleCI tool  
* model_data/ : contains the pretained model for house pricing in Boston and relataed data to it
* output_txt_files : proofs of healthy running app using docker and kubernetes
* app.py : API for the pretained model
* Dockerfile : here is is specified how to build the required image that is used in later stages
* Makefile : it helps to make our coding more neat grouping some commands into single instructions
* make_predictions.sh : script for getting a prediction it can be modified up to the needs of the user
* run_docker.sh :  script for creating the image of the aplication, it also runs the application on a docker container
* upload_docker.sh : take the image specified on run_docker.sh an upload it to dockerhub
* run_kubernetes.sh : it runs the application within a kubernetes cluster














************
Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl



