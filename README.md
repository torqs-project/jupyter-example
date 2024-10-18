# Running Jupyter on Qubernetes backend

## Introduction

This document describes how to execute Jupyter notebooks on the [Qubernetes](https://qubernetes.dev) backend. The Qubernetes backend is a Kubernetes cluster that is configured to run quantum circuits on GPU-backed simulators, e.g. Qiskit or PennyLane.

## Prerequisites

You need the following tools to be able to run Jupyter with the Qubernetes backend:

- [Docker](https://www.docker.com/)

The following tools are optional but recommended:

- [Make](https://www.gnu.org/software/make/)

## Getting started

### Python dependencies

To be able to run Jupyter notebooks on the Qubernetes backend, you need to configure your Python dependencies in the `requirements.txt` file. The template including in this repository contains the following dependencies:

```txt
qiskit
qiskit-aer-gpu
```

You can add more dependencies to this file if needed.

### Build the Docker image

To build the Docker image that contains your dependencies, run the following command:

```bash
make build
```

You will need to adjust the username and the image name in the `Makefile` to match your Docker Hub username and the name of the image you want to create.

### Start Jupyter

To start Jupyter, run the following command:

```bash
make run config=/path/to/kubeconfig
```

You will need to adjust the path to the kubeconfig file that you use to connect to the Qubernetes cluster.

### Access Jupyter

To access Jupyter, open the URL that is displayed in the terminal. You will need to copy the token from the terminal to authenticate.
