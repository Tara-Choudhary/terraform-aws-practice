# Terraform AWS EC2 with Nginx 🚀

This project demonstrates **Infrastructure as Code (IaC)** using **Terraform** to provision and manage an **AWS EC2 instance** with **Nginx** automatically installed via a user data script.

The infrastructure is deployed inside the **default VPC**, secured using a **Terraform-managed security group**, and fully parameterized using variables to ensure flexibility, reusability, and clean infrastructure management.

This project reflects **real-world DevOps and Cloud infrastructure practices**.


## 🏛️ Architecture
- AWS EC2 instance (Ubuntu)
- Default VPC
- Terraform-managed Security Group
- Nginx installed via user data
- Infrastructure provisioned using Terraform


## 📝 Features
- Provision AWS EC2 instance using Terraform  
- Parameterized infrastructure using **variables**  
- **Outputs** for public IP, public DNS, and SSH command  
- Automated Nginx installation using **user data scripts**  
- Security group rules fully managed through Terraform  
- Idempotent and repeatable infrastructure provisioning
  

## 🔐 Security Group Rules
- **SSH (22)** – Remote server access  
- **HTTP (80)** – Nginx web server  
- **Custom Port (8080)** – Application access  


## 🛠️ Tech Stack
- Terraform  
- AWS (EC2, Security Groups, VPC)  
- Linux (Ubuntu)  
- Nginx  


## 🏗️ Project Structure

```
├── provider.tf            # AWS provider configuration
├── terraform.tf           # Required provider versions
├── ec2.tf                 # EC2, security group, key pair resources
├── variables.tf           # Input variables
├── outputs.tf             # Output values
├── install_nginx.sh       # User data script to install Nginx
└── .gitignore             # Ignore sensitive files

```

## ✅ Prerequisites
- AWS account  
- AWS CLI configured (`aws configure`)  
- Terraform installed  
- Existing SSH key pair (public key file)  


## 🖥️ Usage

### 1 Initialize Terraform
```
terraform init
```

### 2 To validate the code
```
terraform validate
```

### 3 Review the execution plan
```
terraform plan
```

### 4 Apply the configuration
```
terraform apply
```

## 🌐 Access the Server

After successful deployment, Terraform outputs the following:

- EC2 Public IP  
- EC2 Public DNS  
- Ready-to-use SSH command  

Open the application in your browser:
```
http://<EC2_PUBLIC_IP>
```
You should see the **Nginx welcome page**.


## 🧠 Terraform Concepts Used

- Providers  
- Resources  
- Variables  
- Outputs  
- User data  
- Dependency management

## 🧹 Cleanup
To destroy all provisioned resources:

```
terraform destroy
Cleaner and standard.
```

## 🎯 Why This Project
This project was built to gain hands-on experience with Terraform and AWS, focusing on:

- Infrastructure automation
- Cloud resource provisioning 
- Secure server configuration 
- Reproducible deployments using Infrastructure as Code
- DevOps best practices


## 📬 Contact

**Author:** Tara Choudhary  

**GitHub:** [Tara-Choudhary](https://github.com/Tara-Choudhary)  

**LinkedIn:** [Tara Choudhary](https://www.linkedin.com/in/tara-choudhary00/)  

**Email:** developer.tarachoudhary@gmail.com
