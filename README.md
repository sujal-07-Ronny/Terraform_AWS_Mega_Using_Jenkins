# 🚀 Terraform AWS Infrastructure Automation using Jenkins CI/CD

This project demonstrates how to provision AWS EC2 infrastructure using Terraform and automate deployment of a Docker-based web application using Jenkins pipeline.

It follows real-world DevOps practices including Infrastructure as Code (IaC), CI/CD automation, and cloud provisioning.

---

## 🛠 Tech Stack

- Terraform (Infrastructure as Code)
- AWS EC2
- Jenkins (CI/CD Pipeline)
- Docker
- Bash scripting
- GitHub

---

## 📌 Project Architecture

Developer → GitHub → Jenkins Pipeline → Terraform → AWS EC2 → Docker Web App

---

## 📂 Repository Structure

```bash
.
├── Jenkinsfile        # Jenkins pipeline configuration
├── main.tf            # Terraform infrastructure resources
├── variables.tf      # Terraform input variables
├── outputs.tf        # Terraform output values
├── user_data.sh      # EC2 startup script (Docker install & app run)
├── .gitignore
└── README.md
