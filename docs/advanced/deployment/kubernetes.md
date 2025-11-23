# Kubernetes Deployment

## Overview

Our Kubernetes manifests provide a scalable, high-availability deployment.

## Prerequisites

- A Kubernetes cluster (v1.24+)
- `kubectl` configured
- A storage class for persistent volumes

## Deployment Steps

1. **Create Namespace**
   ```bash
   kubectl create namespace sbd
   ```

2. **Apply Secrets**
   Edit `k8s/secrets.yaml` with your credentials and apply:
   ```bash
   kubectl apply -f k8s/secrets.yaml -n sbd
   ```

3. **Deploy Database & Cache**
   ```bash
   kubectl apply -f k8s/mongodb.yaml -n sbd
   kubectl apply -f k8s/redis.yaml -n sbd
   ```

4. **Deploy Application**
   ```bash
   kubectl apply -f k8s/deployment.yaml -n sbd
   kubectl apply -f k8s/service.yaml -n sbd
   ```

5. **Configure Ingress**
   Update `k8s/ingress.yaml` with your domain and apply:
   ```bash
   kubectl apply -f k8s/ingress.yaml -n sbd
   ```

## Scaling

To scale the API replicas:
```bash
kubectl scale deployment/sbd-api --replicas=3 -n sbd
```
