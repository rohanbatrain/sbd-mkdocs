# Deployment

## Docker Compose (Recommended)

The easiest way to deploy is using Docker Compose.

```bash
docker-compose up -d
```

## Kubernetes

For production clusters, use the provided Kubernetes manifests.

```bash
kubectl apply -f k8s/
```

## Bare Metal

See the `scripts/deploy_bare_metal.sh` script for details on setting up a bare metal environment.
