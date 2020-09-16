# Kubernetes-django-app
Sample Django application deployed with [Kubernetes](https://kubernetes.io)

## Deployment

 - Create deployment
 - `kubectl apply -f app-deploy.yaml`
 - Expose service by creating a service yaml file as
 - `app-service.yaml`
 - Get mapped port for the app
 - `kubectl get service`
 - Visit k8s cluster provider domain in the browser `http://6c0f8cd6-ef5c-4692-879e-27618056f29c.k8s.civo.com` in my case.

## Services

 - Create services 
 - `kubectl apply -f app-service.yaml`
 - Get mapped port for the app
 - `kubectl get service`

## Secret

 - Create secret for allowing host in django 
 - `kubectl create secret generic wondersecret --from-literal=hostname=`

## Ingress

 - Create ingress
 - `kubectl apply -f app-ingress.yaml`
 - Use a loadbalancer for ingress
 - In this project, I have used `traefik` 
 - Set host to a kubernetes service provider 
 - In this project, I have used `civo` 

