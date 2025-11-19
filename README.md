# 🚀 Real-Time Queue Management System

A full-stack, real-time queue management system built with Java Spring Boot, WebSockets, and a modern frontend. This application allows for the dynamic creation of custom queues, provides a real-time admin dashboard, and generates QR codes for easy, contactless user registration.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Java Version](https://img.shields.io/badge/Java-17+-blue.svg)](https://adoptium.net/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue.svg)](https://www.docker.com/)

## ✨ Live Demo & Features

**Live Application URL:** [https://queue-management-system-1070272816562.us-central1.run.app/] 


https://github.com/user-attachments/assets/8ab0f9a7-c5f1-4973-99a2-a821d73af39a


---

### Key Features:

* **Dynamic Queue Creation**: Instantly create new queues with custom information fields (e.g., Name, Phone, Appointment ID) directly from the UI.
* **Real-Time Admin Dashboard**: A dedicated admin panel to monitor the queue, see who is waiting, and call the next person in line with a single click.
* **Live User View**: Users see their position in the queue update in real-time without needing to refresh the page, thanks to **Spring WebSockets** and **STOMP**.
* **QR Code Generation**: Automatically generates a unique QR code for each queue, allowing users to join instantly by scanning it with their mobile device.
* **RESTful API with Swagger UI**: A fully documented API for programmatic interaction, with a beautiful Swagger UI interface.
* **Cloud-Native & Ready for Deployment**: Dockerized application using Eclipse Temurin images, ready for Google Cloud Run.

## 🛠️ Technology Stack

This project leverages a modern, robust technology stack for a full-featured web application experience.

| Component      | Technology                                                              |
| -------------- | ----------------------------------------------------------------------- |
| **Backend** | Java 17 (Eclipse Temurin), Spring Boot 3                                |
| **Database** | MySQL 8.0 (Cloud SQL in Prod, Docker Container Locally)                 |
| **Real-Time** | Spring WebSockets, STOMP                                                |
| **Frontend** | HTML5, Tailwind CSS, Vanilla JavaScript                                 |
| **API Docs** | Springdoc OpenAPI (Swagger UI)                                          |
| **Deployment** | Docker, Google Cloud Run, GitHub Actions (CI/CD)                        |

## 🚀 Getting Started Locally

You can run this project locally using Docker Compose.

### Prerequisites

* Docker and Docker Compose installed.

### Steps

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/shivam-616/QR-Driven-Queue-Automation.git](https://github.com/shivam-616/QR-Driven-Queue-Automation.git)
    cd QR-Driven-Queue-Automation
    ```

2.  **Create Environment Configuration:**
    Create a file named `.env` in the root directory to configure the local database.
    ```bash
    # Create .env file
    echo "DB_DATABASE=queue_db" > .env
    echo "DB_USERNAME_PLACEHOLDER=root" >> .env
    echo "DB_PASSWORD_PLACEHOLDER=rootpassword" >> .env
    ```

3.  **Run with Docker Compose:**
    This command builds the app and starts the MySQL container.
    ```bash
    docker-compose up --build
    ```

4.  **Access the application:**
    * **Application:** [http://localhost:8080](http://localhost:8080)
    * **API Documentation:** [http://localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html)

## ☁️ Cloud Deployment (CI/CD)

This project includes a secure **GitHub Actions** pipeline that automatically builds and deploys the application to **Google Cloud Run** whenever changes are pushed to the `main` branch.

### Infrastructure Setup (One-time)
1.  **Google Cloud Project:** Create a project and enable Cloud Run, Cloud SQL, Artifact Registry, and Cloud Build APIs.
2.  **Cloud SQL:** Create a MySQL 8.0 instance.
3.  **Artifact Registry:** Create a Docker repository.
4.  **Service Account:** Create a Service Account with permissions to deploy to Cloud Run and write to Artifact Registry.

### GitHub Secrets Setup
To enable the automatic deployment, go to your repository **Settings > Secrets and variables > Actions** and add the following secrets:

| Secret Name | Value |
| :--- | :--- |
| `GCP_PROJECT_ID` | Your Google Cloud Project ID (e.g., `queue-management-system`) |
| `GCP_CREDENTIALS` | The JSON key of your Service Account (Github Actions Deployer) |
| `DB_PASSWORD` | The password for your Cloud SQL database user |

### How it Works
The workflow is defined in `.github/workflows/deploy.yml`.
1.  **Push:** You push code to `main`.
2.  **Build:** GitHub Actions builds the Docker image using `maven:3.9-eclipse-temurin-17`.
3.  **Publish:** The image is pushed to Google Artifact Registry.
4.  **Deploy:** The image is deployed to Cloud Run, injecting the database credentials securely as environment variables.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/shivam-616/QR-Driven-Queue-Automation/issues).

1.  Fork the repository.
2.  Create your feature branch (`git checkout -b feature/NewFeature`).
3.  Commit your changes (`git commit -m 'Add some NewFeature'`).
4.  Push to the branch (`git push origin feature/NewFeature`).
5.  Open a Pull Request.

## 👤 Author

**Shivam**

* GitHub: [@shivam-616](https://github.com/shivam-616)
