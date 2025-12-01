# 🚀 Automated CI/CD Pipeline for Dockerized Application

![Build Status](https://img.shields.io/github/actions/workflow/status/vivekkoli22/docker-cicd-project/main.yml?branch=main)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)

## 📋 Project Overview
This project demonstrates a complete **End-to-End DevOps Pipeline**. It automates the deployment of a Python (Flask) web application to an **AWS EC2** instance using **Docker** and **GitHub Actions**.

Whenever code is pushed to the `main` branch, the pipeline triggers automatically to build the Docker image, push it to Docker Hub, and deploy the latest container to the live server.

## 🏗️ Architecture
**Flow:** `Code Push` -> `GitHub Actions` -> `Build Docker Image` -> `Push to Docker Hub` -> `Login to AWS EC2` -> `Pull & Run Container`

## 🛠️ Tech Stack Used
* **Version Control:** Git & GitHub
* **Containerization:** Docker
* **CI/CD Tool:** GitHub Actions
* **Cloud Provider:** AWS (EC2 Instance)
* **Language:** Python (Flask)
* **OS:** Linux (Ubuntu)

## ⚙️ Features
* ✅ **Automated Testing:** Pipeline checks for build errors before deployment.
* ✅ **Containerization:** Ensures the app runs identically on dev and prod environments.
* ✅ **Secure Credentials:** Used GitHub Secrets to manage SSH keys and Docker passwords securely.
* ✅ **Zero-Touch Deployment:** No manual SSH required; deployment is handled by the script.

## 🚀 How to Run Locally

1.  **Clone the repository:**
    ```bash
    [https://github.com/vivekkoli22/docker-cicd-project.git]
    ```
2.  **Build the Docker Image:**
    ```bash
    docker build -t my-app .
    ```
3.  **Run the Container:**
    ```bash
    docker run -p 5000:5000 my-app
    ```
4.  **Access the App:**
    Open `http://localhost:5000` in your browser.

## 📂 Project Structure
```text
├── .github/workflows/    # CI/CD Pipeline Configuration (main.yml)
├── app.py                # Main Python Application
├── Dockerfile            # Instructions to build Docker Image
├── requirements.txt      # Python dependencies
└── README.md             # Project Documentation
