# Troubleshooting

## Common Issues

### Database Connection Failed
- Check if MongoDB is running.
- Verify `MONGODB_URL` is correct.

### Redis Connection Failed
- Check if Redis is running.
- Verify `REDIS_URL`.

### Authentication Errors
- Ensure `SECRET_KEY` is consistent across restarts if not persisted.
- Check system time synchronization for TOTP.
