# PocketBase Stack (Docker + Portainer Deployment)

This project provides a minimal Docker setup for running [PocketBase](https://pocketbase.io/), ready to be deployed using [Portainer](https://www.portainer.io/).

---

## 📦 What is PocketBase?

**PocketBase** is a lightweight backend that offers authentication, a built-in SQLite database, REST/Realtime APIs, and an admin dashboard — all packed into a single binary.

It’s ideal for web, mobile, or desktop apps that need a fast, zero-config backend.

👉 Official site: [https://pocketbase.io](https://pocketbase.io)

---

## 🚀 How to Deploy with Portainer

1. Upload this project to a Git repository (e.g., GitHub, GitLab).
2. In Portainer, go to **Stacks > Add Stack > Git Repository**.
3. Fill out the following fields:
   - **Repository URL**: your repository link
   - **Repository reference**: `refs/heads/main`
   - **Compose path**: `docker-compose.yml`
4. Add the required environment variable:

| Name                | Value                            |
|---------------------|----------------------------------|
| `PB_ENCRYPTION_KEY` | your-32-character-secret-key   |

> You can generate a secure key with: `openssl rand -hex 16`

5. Click **Deploy the Stack**.

---

## 📁 Project Structure

