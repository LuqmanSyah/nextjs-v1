# Next.js v1 - Dockerized Development Environment

This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app), configured with Docker for consistent development environment.

## 📋 Prerequisites

Before running this project, make sure you have the following installed on your system:

### Required Software

- **Node.js** (version 18 or higher) - [Download here](https://nodejs.org/)
- **npm** (comes with Node.js) or **yarn** or **pnpm** or **bun**
- **Docker Desktop** - [Download here](https://www.docker.com/products/docker-desktop/)
- **Docker Compose** (included with Docker Desktop)

### System Requirements

- **Operating System**: Windows 10/11, macOS, or Linux
- **Memory**: Minimum 4GB RAM (8GB recommended)
- **Disk Space**: At least 2GB free space

## 🛠️ Technology Stack

This project uses the following technologies:

### Core Framework

- **Next.js 15.5.4** - React framework for production
- **React 19.1.0** - JavaScript library for building user interfaces
- **TypeScript** - Type-safe JavaScript

### Styling & UI

- **Tailwind CSS 4** - Utility-first CSS framework
- **PostCSS** - CSS processor

### Development Tools

- **ESLint** - Code linting and formatting
- **Docker** - Containerization for consistent development environment

## 🚀 Getting Started

You can run this project in two ways: **locally** or using **Docker** (recommended).

### Option 1: Local Development

1. **Clone the repository**:

   ```bash
   git clone <repository-url>
   cd next-v1
   ```

2. **Install dependencies**:

   ```bash
   npm install
   # or
   yarn install
   # or
   pnpm install
   # or
   bun install
   ```

3. **Run the development server**:

   ```bash
   npm run dev
   # or
   yarn dev
   # or
   pnpm dev
   # or
   bun dev
   ```

4. **Open your browser** and navigate to [http://localhost:3000](http://localhost:3000)

### Option 2: Docker Development (Recommended)

1. **Clone the repository**:

   ```bash
   git clone <repository-url>
   cd next-v1
   ```

2. **Start the development server with Docker**:

   ```bash
   npm run docker:dev
   ```

   This will build the Docker image and start the container with hot-reload enabled.

3. **Open your browser** and navigate to [http://localhost:3000](http://localhost:3000)

## 🐳 Docker Commands

This project includes several Docker commands for development:

```bash
# Start development server with Docker (with logs visible)
npm run docker:dev

# Start development server in detached mode (background)
npm run docker:dev:detach

# Stop Docker containers
npm run docker:stop

# View application logs
npm run docker:logs

# Access container shell for debugging
npm run docker:shell
```

## 📝 Development

You can start editing the page by modifying `src/app/page.tsx`. The page auto-updates as you edit the file thanks to hot-reload functionality.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## 🎯 Available Scripts

In the project directory, you can run:

### Development Scripts

- `npm run dev` - Runs the app in local development mode
- `npm run build` - Builds the app for production
- `npm run start` - Starts the production server
- `npm run lint` - Runs ESLint to check code quality

### Docker Scripts

- `npm run docker:dev` - Start development with Docker (recommended)
- `npm run docker:dev:detach` - Start Docker in background
- `npm run docker:stop` - Stop Docker containers
- `npm run docker:logs` - View application logs
- `npm run docker:shell` - Access container shell

## 🏗️ Project Structure

```
next-v1/
├── src/
│   └── app/
│       ├── favicon.ico
│       ├── globals.css
│       ├── layout.tsx
│       └── page.tsx
├── public/
│   ├── file.svg
│   ├── globe.svg
│   ├── next.svg
│   ├── vercel.svg
│   └── window.svg
├── docker-compose.yml
├── Dockerfile.dev
├── package.json
├── tsconfig.json
├── next.config.ts
├── eslint.config.mjs
├── postcss.config.mjs
└── README.md
```

## 🔧 Configuration Files

- **`docker-compose.yml`** - Docker Compose configuration for development
- **`Dockerfile.dev`** - Development Docker image configuration
- **`next.config.ts`** - Next.js configuration
- **`tsconfig.json`** - TypeScript configuration
- **`eslint.config.mjs`** - ESLint configuration
- **`postcss.config.mjs`** - PostCSS configuration for Tailwind CSS

## 🐛 Troubleshooting

### Common Issues

1. **Port 3000 already in use**:

   ```bash
   # Stop the conflicting process or use a different port
   npm run docker:stop
   ```

2. **Docker not running**:

   - Make sure Docker Desktop is running
   - Check Docker status: `docker --version`

3. **Permission errors on Windows**:

   - Make sure Docker Desktop has proper permissions
   - Try running terminal as administrator

4. **Hot reload not working in Docker**:
   - The project is configured with Docker Compose watch mode
   - Changes in `src/` directory should automatically trigger updates

## 📚 Learn More

To learn more about the technologies used in this project:

- [Next.js Documentation](https://nextjs.org/docs) - Learn about Next.js features and API
- [Learn Next.js](https://nextjs.org/learn) - Interactive Next.js tutorial
- [React Documentation](https://reactjs.org/docs) - Learn React
- [TypeScript Documentation](https://www.typescriptlang.org/docs) - Learn TypeScript
- [Tailwind CSS Documentation](https://tailwindcss.com/docs) - Learn Tailwind CSS
- [Docker Documentation](https://docs.docker.com/) - Learn Docker

## 🚀 Deployment

### Vercel (Recommended)

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out the [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.

### Docker Production

For production deployment with Docker, you'll need to create a production Dockerfile. The current setup is optimized for development.

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is private and all rights are reserved.

---

**Happy Coding! 🚀**
