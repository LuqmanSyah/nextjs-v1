#!/bin/bash

# Docker Development Setup Script for Next.js

echo "🚀 Starting Next.js Development Environment with Docker"
echo "==============================================="

# Function to check if Docker is running
check_docker() {
    if ! docker info > /dev/null 2>&1; then
        echo "❌ Docker is not running. Please start Docker Desktop first."
        exit 1
    fi
}

# Function to build and start containers
start_dev() {
    echo "📦 Building and starting containers..."
    docker-compose up --build
}

# Function to start containers in background
start_dev_detach() {
    echo "📦 Building and starting containers in background..."
    docker-compose up --build -d
    echo "✅ Containers are running in the background"
    echo "🌐 Your Next.js app should be available at: http://localhost:3000"
    echo "📝 To view logs: npm run docker:logs"
    echo "🛑 To stop: npm run docker:stop"
}

# Function to stop containers
stop_dev() {
    echo "🛑 Stopping containers..."
    docker-compose down
    echo "✅ Containers stopped"
}

# Function to show logs
show_logs() {
    echo "📋 Showing container logs..."
    docker-compose logs -f nextjs-app
}

# Function to access container shell
shell_access() {
    echo "🐚 Accessing container shell..."
    docker-compose exec nextjs-app sh
}

# Main menu
case "$1" in
    "start")
        check_docker
        start_dev
        ;;
    "start:bg")
        check_docker
        start_dev_detach
        ;;
    "stop")
        stop_dev
        ;;
    "logs")
        show_logs
        ;;
    "shell")
        shell_access
        ;;
    *)
        echo "Usage: $0 {start|start:bg|stop|logs|shell}"
        echo ""
        echo "Commands:"
        echo "  start     - Start development environment (foreground)"
        echo "  start:bg  - Start development environment (background)"
        echo "  stop      - Stop all containers"
        echo "  logs      - Show application logs"
        echo "  shell     - Access container shell"
        echo ""
        echo "Or use npm scripts:"
        echo "  npm run docker:dev           - Start development (foreground)"
        echo "  npm run docker:dev:detach    - Start development (background)"
        echo "  npm run docker:stop          - Stop containers"
        echo "  npm run docker:logs          - Show logs"
        echo "  npm run docker:shell         - Access shell"
        exit 1
        ;;
esac