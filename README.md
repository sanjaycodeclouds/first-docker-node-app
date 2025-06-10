# First Docker Node App

This is a basic Node.js app running inside Docker. Ideal for testing, learning, or small deployments.

---

## 🔧 How to Use

### 1. Pull from Docker Hub (Run-only)
If you just want to run the app:

docker pull sanjaykarmakar/first-docker-node-app


docker run -it -e PORT=4001 -p 4001:4001 sanjaykarmakar/first-docker-node-app
