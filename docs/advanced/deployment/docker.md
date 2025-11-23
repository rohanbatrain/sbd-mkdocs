# Docker Deployment

## Overview

We provide a production-ready `docker-compose.yml` that orchestrates the entire stack.

## Prerequisites

- Docker Engine 20.10+
- Docker Compose v2.0+

## Configuration

1. Copy `.env.example` to `.env`.
2. Set secure passwords for `MONGODB_PASSWORD` and `REDIS_PASSWORD`.
3. Generate a strong `SECRET_KEY`.

## Running the Stack

```bash
# Start all services in detached mode
docker-compose up -d

# View logs
docker-compose logs -f
```

## Production Considerations

- **Volume Management**: Ensure `mongo_data` and `redis_data` volumes are backed up.
- **Resource Limits**: Adjust CPU and memory limits in `docker-compose.yml` based on your host.
- **Networking**: The API is exposed on port 8000 by default. Use a reverse proxy (Nginx/Traefik) for SSL termination.
