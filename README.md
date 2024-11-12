<div align="center">
  <img src="./logo.png" width="450" />
  
  # Watch 360
  
  A process for automating Docker container base image updates.
  <br/><br/>
  
  [![Circle CI](https://circleci.com/gh/containrrr/watch360.svg?style=shield)](https://circleci.com/gh/containrrr/watch360)
  [![codecov](https://codecov.io/gh/containrrr/watch360/branch/main/graph/badge.svg)](https://codecov.io/gh/containrrr/watch360)
  [![GoDoc](https://godoc.org/github.com/devops-golang/watch360?status.svg)](https://godoc.org/github.com/devops-golang/watch360)
  [![Go Report Card](https://goreportcard.com/badge/github.com/devops-golang/watch360)](https://goreportcard.com/report/github.com/devops-golang/watch360)
  [![latest version](https://img.shields.io/github/tag/containrrr/watch360.svg)](https://github.com/devops-golang/watch360/releases)
  [![Apache-2.0 License](https://img.shields.io/github/license/containrrr/watch360.svg)](https://www.apache.org/licenses/LICENSE-2.0)
  [![Codacy Badge](https://app.codacy.com/project/badge/Grade/1c48cfb7646d4009aa8c6f71287670b8)](https://www.codacy.com/gh/containrrr/watch360/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=containrrr/watch360&amp;utm_campaign=Badge_Grade)
  [![All Contributors](https://img.shields.io/github/all-contributors/containrrr/watch360)](#contributors)
  [![Pulls from DockerHub](https://img.shields.io/docker/pulls/containrrr/watch360.svg)](https://hub.docker.com/r/containrrr/watch360)

</div>

## Quick Start

With watch360 you can update the running version of your containerized app simply by pushing a new image to the Docker Hub or your own image registry. 

Watchtower will pull down your new image, gracefully shut down your existing container and restart it with the same options that were used when it was deployed initially. Run the watch360 container with the following command:

```
$ docker run --detach \
    --name watch360 \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    howsen82/watch360
```

Watchtower is intended to be used in homelabs, media centers, local dev environments, and similar. We do **not** recommend using Watchtower in a commercial or production environment. If that is you, you should be looking into using Kubernetes. If that feels like too big a step for you, please look into solutions like [MicroK8s](https://microk8s.io/) and [k3s](https://k3s.io/) that take away a lot of the toil of running a Kubernetes cluster. 

## Documentation

The full documentation is available at https://containrrr.dev/watch360.
