# 🚀 Terraform AWS VPC & MySQL Infrastructure Setup

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-IaC-blueviolet?style=for-the-badge&logo=terraform">
  <img src="https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazonaws">
  <img src="https://img.shields.io/badge/MySQL-Database-blue?style=for-the-badge&logo=mysql">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">
</p>

---

# 🌟 Project Overview

This project demonstrates secure AWS infrastructure provisioning using Terraform (Infrastructure as Code).

The infrastructure includes:

- 🌐 Custom VPC
- 🌍 Public & Private Subnets
- 🔐 Security Groups
- 🚪 Internet Gateway
- 🔄 NAT Gateway
- 💻 Bastion Host EC2
- 🛢️ MySQL Server in Private Subnet

The project follows real-world cloud security and networking practices.

---

# 🎯 Objectives

✅ Create AWS infrastructure using Terraform

✅ Implement public & private subnet architecture

✅ Configure secure network communication

✅ Deploy MySQL server in private network

✅ Use Bastion Host for secure access

✅ Automate provisioning using IaC

---

# 🏗️ Architecture Diagram

## AWS Infrastructure Architecture

<img width="701" height="496" alt="architecture png" src="https://github.com/user-attachments/assets/b135ef47-c628-49e8-a7f9-4c7ca49dddac" />


---

# 📁 Project Structure

```bash
Terraform-AWS-VPC-MySQL-Infrastructure-Setup/
│
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── main.tf
├── nat.tf
├── security.tf
├── outputs.tf
├── README.md
│
├── images/
│   └── architecture.png
│
└── .gitignore
```

---

# ⚙️ Technologies Used

| Tool | Purpose |
|------|----------|
| Terraform | Infrastructure as Code |
| AWS | Cloud Provider |
| EC2 | Compute Service |
| VPC | Networking |
| NAT Gateway | Private Internet Access |
| MySQL | Database |
| Linux | Server OS |
| Git & GitHub | Version Control |

---

# 🌐 Infrastructure Components

## 🔹 VPC

- CIDR Block: `10.0.0.0/16`
- DNS Support Enabled

---

## 🔹 Public Subnet

- Hosts Bastion EC2
- Internet Accessible

---

## 🔹 Private Subnet

- Hosts MySQL Server
- No Direct Internet Access

---

## 🔹 NAT Gateway

- Allows outbound internet access for private subnet

---

## 🔹 Security Groups

### Public Security Group
- SSH Access (Port 22)

### Private Security Group
- MySQL Access (3306)
- SSH only from Bastion Host

---

# 🚀 Terraform Workflow

```text
Start
 │
 ▼
Write Terraform Code
 │
 ▼
terraform init
 │
 ▼
terraform plan
 │
 ▼
terraform apply
 │
 ▼
AWS Resources Provisioned
 │
 ▼
Verify Infrastructure
 │
 ▼
terraform destroy
 │
 ▼
End
```

---

# 🚀 Getting Started

## 🔹 Initialize Terraform

```bash
terraform init
```

## 🔹 Validate Configuration

```bash
terraform validate
```

## 🔹 Preview Infrastructure

```bash
terraform plan
```

## 🔹 Deploy Infrastructure

```bash
terraform apply
```

## 🔹 Destroy Infrastructure

```bash
terraform destroy
```

---

# 📊 Outputs

✅ VPC ID

✅ Public & Private Subnet IDs

✅ EC2 Instance IDs

✅ Public IP of Bastion Host

✅ Private IP of MySQL Server

---

# 🔐 Best Practices Followed

✅ Infrastructure as Code (IaC)

✅ Secure Private Database Deployment

✅ Network Isolation

✅ Security Group Restrictions

✅ Modular & Clean Terraform Structure

---

# 🧠 Key Learnings

- AWS Networking Concepts
- VPC Architecture
- Terraform Automation
- Infrastructure as Code
- Cloud Security Best Practices
- Linux Server Management

---

# 👨‍💻 Author

## Chaitanya Bhosale

🔗 GitHub: https://github.com/Chaitanya5068

🔗 LinkedIn: https://www.linkedin.com/in/chaitanya-bhosale

---

# ⭐ Support

If you found this project useful, give it a ⭐ on GitHub!

---

# 📌 Note

This project is created for educational and learning purposes to demonstrate Terraform-based AWS infrastructure provisioning.
