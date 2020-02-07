![KM](https://katapultmedia.com/wp-content/uploads/2018/04/km_color_h.jpg)

# AWS Fargate Intro

[AWS Fargate](https://aws.amazon.com/fargate/) is "serverless" compute for containers. Ok...there are servers somewhere doing something, BUT you at least don't have to worry about managing infrastructure. It makes right-sizing considerably easier. Fargate is one of the deployment options for [AWS Elastic Container Service](https://aws.amazon.com/ecs). ECS is a container orchestrator like Kubernetes.

Watch the [ClickOps version](https://youtu.be/imGPwpwm3PY) first to get an understanding of Fargate. This tutorial covers going from ClickOps to terraforming the same Fargate setup.

## Usage

This project is not intended to be used as a module for remote use. Take the files, customize them, and use them to your hearts content. Create an issue if you have questions.

The [Makefile](Makefile) has general commands to use for ease of development. There aren't special by any means. Feel free to `cd` to directories and run the `terraform` CLI commands you know and love directly.

### `make` commands

```make
Available targets:
fmt                            Formats the TF
init                           Install required tools for local environment
apply                          TF Apply the terraform directory
destroy                        TF Destroy the terraform directory
plan                           TF Plan the terraform directory
```

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## About

This tutorial is maintained and funded by [Katapult Media, Inc](https://katapultmedia.com). Send us a message!

![KM](https://katapultmedia.com/wp-content/uploads/2018/04/km_color_h.jpg)
