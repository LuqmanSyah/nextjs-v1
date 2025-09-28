# Docker Development Setup

This repository contains a complete Docker development environment for Next.js with hot reload functionality.

## 🚀 Quick Start

### Prerequisites

- Docker Desktop installed and running
- WSL2 (for Windows users)

### Start Development Environment

1. **Start containers (foreground)**:

   ```bash
   npm run docker:dev
   ```

2. **Start containers (background)**:

   ```bash
   npm run docker:dev:detach
   ```

3. **Access your application**:
   Open [http://localhost:3000](http://localhost:3000) in your browser

## 📋 Available Commands

| Command                     | Description                                |
| --------------------------- | ------------------------------------------ |
| `npm run docker:dev`        | Start development environment (foreground) |
| `npm run docker:dev:detach` | Start development environment (background) |
| `npm run docker:stop`       | Stop all containers                        |
| `npm run docker:logs`       | View application logs                      |
| `npm run docker:shell`      | Access container shell                     |

### Alternative: Using the script

```bash
# Make script executable (Linux/WSL)
chmod +x dev-docker.sh

# Start development
./dev-docker.sh start

# Start in background
./dev-docker.sh start:bg

# Stop containers
./dev-docker.sh stop

# View logs
./dev-docker.sh logs

# Access shell
./dev-docker.sh shell
```

## 🔄 Hot Reload Features

The Docker setup includes:

- **File Sync**: Real-time synchronization of source code changes
- **Volume Mounting**: Efficient file watching with bind mounts
- **Polling Configuration**: Enhanced file watching with polling for cross-platform compatibility
- **Node Modules Isolation**: Prevents conflicts between host and container dependencies

### Key Configuration for Hot Reload:

1. **Environment Variables**:

   - `CHOKIDAR_USEPOLLING=true` - Enables polling for file changes
   - `WATCHPACK_POLLING=true` - Webpack polling for better compatibility

2. **Volume Mounts**:
   - Source code (`./src`) is bind-mounted for instant updates
   - Configuration files are individually mounted
   - `node_modules` and `.next` are excluded to prevent conflicts

## 📂 Project Structure

```
.
├── Dockerfile.dev          # Development Docker image
├── docker-compose.yml      # Docker Compose configuration
├── .dockerignore           # Docker ignore rules
├── dev-docker.sh           # Development helper script
├── src/                    # Next.js source code (hot-reloaded)
├── public/                 # Static assets (hot-reloaded)
└── package.json            # Updated with Docker scripts
```

## 🛠️ Troubleshooting

### Hot Reload Not Working?

1. **Check polling settings**: Make sure `CHOKIDAR_USEPOLLING=true` is set
2. **Restart containers**: `npm run docker:stop && npm run docker:dev`
3. **Check file permissions**: Ensure files are accessible in WSL2
4. **View logs**: `npm run docker:logs` to check for errors

### Container Issues?

1. **Rebuild containers**: Add `--build` flag to force rebuild
2. **Clean up**: `docker system prune` to clean unused resources
3. **Check Docker**: Ensure Docker Desktop is running

### Performance Issues?

1. **Use WSL2**: Make sure you're running from WSL2 filesystem
2. **Adjust polling**: Modify polling intervals in docker-compose.yml
3. **Resource limits**: Check Docker Desktop resource allocation

## 🔧 Customization

### Adding Environment Variables

Edit `docker-compose.yml`:

```yaml
environment:
  - NODE_ENV=development
  - YOUR_CUSTOM_VAR=value
```

### Adding Additional Services

Uncomment and modify the database service in `docker-compose.yml`:

```yaml
postgres:
  image: postgres:15-alpine
  environment:
    POSTGRES_DB: nextjs_dev
    POSTGRES_USER: postgres
    POSTGRES_PASSWORD: postgres
  ports:
    - "5432:5432"
```

### Customizing File Watching

Modify the volumes section in `docker-compose.yml` to include/exclude specific directories.

## 📝 Notes

- The development server runs on port 3000 (configurable in docker-compose.yml)
- File changes in `src/` and `public/` trigger automatic reloads
- Node modules are managed within the container to avoid version conflicts
- The setup is optimized for WSL2 and cross-platform development
