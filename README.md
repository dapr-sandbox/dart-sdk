[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)
[![codecov](https://codecov.io/gh/Abhilash-Chandran/dart-sdk/branch/master/graph/badge.svg?token=F3XOQ7UGXE)](https://codecov.io/gh/Abhilash-Chandran/dart-sdk)
[![E2E & unit tests](https://github.com/Abhilash-Chandran/dart-sdk/actions/workflows/test.yaml/badge.svg)](https://github.com/Abhilash-Chandran/dart-sdk/actions/workflows/test.yaml)

# Dapr dart sdk

Welcome to the dart-sdk for dapr. This repository aims to provide and maintain the dart packages required to interact with dapr sidecar.

## What is Dapr?
[Dapr](https://dapr.io/) is an API to build & maintain, portable and reliable microservices. 
It allows developers to build microservices that can inteface with a plethora of external services, through a set of standardised APIs.
Using Dapr allows developers to focus on the core business logic instead of dealing with the SDKs required to connect with theses external services.

Dapr enables this interfacing by defining a set of standard components namely building blocks each of which handle different core logic that a microservice would require to handle. This is achieved using a sidecar architecture in which the sidecar runs alongside your service or web app and enables interacting with external services through this sidecar.

To learn more about Dapr head over to docs section at [https://dapr.io/](https://dapr.io/)


## What does this SDK offer?

The Dart-sdk offers two main packages namely [dapr_client](packages/dapr_client/README.md) and [dapr_server](packages/dapr_server/README.md) which provides api's to interact with a dapr_sidercar.

When using Dapr there are two main use cases. 

1. An application interacting with the Dapr sidecar to invoke, publish or retrieve state.
   
   * [dapr_client](packages/dapr_client/README.md) eases this process by providing a unified api to interact with all the building blocks a sidecar offers.

2. An application which can be invoked by external services, which listens to a published message to take corresponding action.
   
   * [dapr_server](packages/dapr_server/README.md) eases this process by providing APIs to write daperised services which confirm to the required specification.

The image below depicts both these use cases.

