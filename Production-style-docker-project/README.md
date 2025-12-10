# Industry-Level Docker Compose Project

## Overview
This project demonstrates a production-style multi-container application using Docker Compose.
It includes a reverse proxy, frontend, shell-based backend API, and MySQL database.

## Architecture
Client → Nginx → Frontend / Backend → MySQL

## Tech Stack
- Docker & Docker Compose
- Nginx (reverse proxy)
- Shell scripting (backend API using nc)
- MySQL (database)
- Volumes, env variables, health checks

## How to Run

```bash
docker-compose up --build

