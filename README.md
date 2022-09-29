[![CircleCI](https://dl.circleci.com/status-badge/img/gh/mersile-atti/project-ml-microservice-kubernetes/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/mersile-atti/project-ml-microservice-kubernetes/tree/master)

## Project Overview

Prediction-app is a Python flask application that use `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

### Project goal

Operationalize machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications.

### Project features

* Circleci for CI/CD
* Build and run a docker image of prediction-app 
* Upload prediction-app container to docker hub
* Deploy the container using Kubernetes and make a prediction
---

## Clone project
```bash
$ git clone https://github.com/mersile-atti/project-ml-microservice-kubernetes.git
```

## Setup the Environment


### Requirements

* [Python 3.7 is required](https://phoenixnap.com/kb/how-to-install-python-3-ubuntu)
* [Hadolint](https://github.com/hadolint/hadolint)
* [kubernetes](https://kubernetes.io/releases/download/)
* [minikube](https://minikube.sigs.k8s.io/docs/start/)
* [Create docker account](https://hub.docker.com/)
* Edit dockerpath in `upload_docker.sh` and `run_kubernetes.sh`



* Create a virtualenv and activate it:  python3 -m venv ~/.devops && source ~/.devops/bin/activate
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes-Specific Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create a Flask app in a Container
* Run via kubectl 
* You can choose to run one cluster locally with [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)