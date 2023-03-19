# Hello Django App
# Introduction
 This repository contains code and notes to get a sample django application dockerized , containerized  and 
 running on a kubernetes cluster in a cloud at a Kubernetes Provider Cloud environment.

## Preliminary steps

1. Fetch the source code for this example.
   ````
   git clone https://github.com/karthikrajdev99/hello_django_app.git
   ````

2. [Install Docker][docker-install].

3. Take a look at and get a feel for the app used in this repository. It is a simple website project
that’s built following the excellent [Django Girls
Tutorial][django-girls-tutorial].


## Create and publish Docker containers

For this example, we'll be using [Quay](https://quay.io/)
to host and deliver our containers. And since we're not working with
any sensitive information, we'll expose these containers to the
public.


### Django app running within Gunicorn

Building and Pushing the container:

we use [Quay](https://quay.io/) to host the images there and the building and push images are automated
by utilizing git based build triggers.


[docker-install]: https://docs.docker.com/engine/installation/
[kubernetes-install]: http://kubernetes.io/docs/getting-started-guides/
[django-girls-tutorial]: http://tutorial.djangogirls.org
[GKE]: https://cloud.google.com/container-engine/
[gcp-sdk]: https://cloud.google.com/sdk/
