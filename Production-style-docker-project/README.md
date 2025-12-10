✅ Production-Style Docker Compose Project

Overview

This is a production-style multi-container Docker application using Docker Compose.
It simulates real-world deployment with reverse proxy, backend API, and database.

🧰 Technology Stack

-Docker

-Docker Compose

-Nginx (Reverse Proxy Configuration)

-Shell Scripting (Backend API)

-MySQL Database

-Docker Volumes (Persistence)

-Environment Variables

-Healthchecks

-GitHub Actions (CI Pipeline)


📁 Project Structure
Production-style-docker-project/
 ├── frontend/        # Static frontend site
 ├── backend/         # Shell-based backend API
 ├── nginx/           # Reverse proxy configuration
 ├── db/              # Database directory
 ├── .env             # Environment variables
 ├── docker-compose.yml
 ├── README.md
 └── .github/workflows/docker-ci.yml


⚙ How to Run the Project
Step 1: Clone the repository
git clone <your-repo-url>
cd Production-style-docker-project

Step 2: Start the application
docker-compose up --build

🌐 Access the Application

Since the project runs on port 8084, use the following URLs:

Service	URL
Frontend	http://localhost:8084

Backend API	http://localhost:8084/api



✅ Features Implemented

-Multi-container orchestration using Docker Compose

-Reverse proxy using Nginx

-Shell-based backend service using netcat

-Environment-based configuration

-Backend health check monitoring

-Container log limits

-Persistent MySQL storage using volumes

-Single-command deployment

-CI pipeline automation using GitHub Actions


🔁 CI/CD Pipeline

-This project includes a GitHub Actions CI pipeline that:

-Automatically runs on every push

-Builds Docker images

-Starts all services using Docker Compose

-Shuts down containers after validation

-This ensures continuous integration and Docker build verification.
