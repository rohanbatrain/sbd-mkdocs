# Bare Metal Deployment

## Overview

For maximum performance or specific hardware requirements, you can deploy directly on a Linux server.

## Prerequisites

- Ubuntu 22.04 LTS (recommended)
- Python 3.10+
- MongoDB 6.0+
- Redis 7.0+

## Installation

1. **Clone Repository**
   ```bash
   git clone https://github.com/rohanbatrain/second_brain_database.git
   cd second_brain_database
   ```

2. **Install Dependencies**
   We use `uv` for fast package management.
   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   uv sync --extra prod
   ```

3. **Systemd Service**
   Create `/etc/systemd/system/sbd.service`:
   ```ini
   [Unit]
   Description=Second Brain Database API
   After=network.target mongodb.service redis.service

   [Service]
   User=sbd
   Group=sbd
   WorkingDirectory=/opt/second_brain_database
   EnvironmentFile=/opt/second_brain_database/.env
   ExecStart=/root/.cargo/bin/uv run uvicorn src.second_brain_database.main:app --host 0.0.0.0 --port 8000 --workers 4
   Restart=always

   [Install]
   WantedBy=multi-user.target
   ```

4. **Start Service**
   ```bash
   sudo systemctl enable --now sbd
   ```
