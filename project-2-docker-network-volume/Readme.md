# Project 2: Docker Networking & Volumes

## 📌 Objective
This project demonstrates how multiple Docker containers communicate using a custom Docker network and share persistent data using Docker volumes.

---

## 🔧 Technologies Used
- Docker
- Linux Shell
- Docker Volumes
- Docker Networks

---

## Project Architecture

Two containers are used:

1. **Writer Container**
   - Continuously writes logs to a file.
2. **Reader Container**
   - Reads and displays the same log file in real-time.

Both containers share a common Docker volume and communicate through a custom Docker network.

---

##  Files in This Project

| File        | Description |
|--------------|-------------|
| `writer.sh` | Writes logs to shared volume |
| `reader.sh` | Reads logs from shared volume |
| `Dockerfile` | Builds common image |

---

## ⚙️ Setup Instructions

Step 1: Build Image
docker build -t project2-image .

Step 2: Create Network & Volume
docker network create buddy-net
docker volume create buddy-vol

Step 3: Start Writer Container
docker run -d \
--name writer \
--network buddy-net \
--mount source=buddy-vol,target=/data \
project2-image ./writer.sh

Step 4: Start Reader Container
docker run -d \
--name reader \
--network buddy-net \
--mount source=buddy-vol,target=/data \
project2-image ./reader.sh

Step 5: View Logs
docker logs -f reader
