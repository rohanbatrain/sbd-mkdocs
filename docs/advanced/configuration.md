# Configuration

Configuration is managed via environment variables or a `.sbd` file.

## Core Settings

| Variable | Description | Default |
|----------|-------------|---------|
| `MONGODB_URL` | MongoDB connection string | Required |
| `SECRET_KEY` | JWT signing key | Required |
| `REDIS_URL` | Redis connection string | `redis://localhost:6379/0` |

## Feature Flags

- `MCP_ENABLED`: Enable Model Context Protocol server.
- `CLUSTER_ENABLED`: Enable distributed cluster mode.
