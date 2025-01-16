# Jenkins Deployment on AWS using Terraform

This project demonstrates how to deploy Jenkins on an AWS EC2 instance using Terraform. It includes creating a VPC, subnets, security groups, and an EC2 instance with Jenkins pre-installed.

---

## ✨ Features

- **Automated Infrastructure Provisioning**: Uses Terraform to set up AWS resources.
- **Jenkins Installation**: Automatically installs and configures Jenkins on the EC2 instance.
- **Custom VPC Setup**: Includes a VPC, public subnet, and an internet gateway.
- **Secure Access**: Configures security groups for SSH and Jenkins access.

---

## 📋 Prerequisites

Before you begin, ensure you have the following:

- **AWS Account** with programmatic access (Access Key ID and Secret Access Key).
- **Terraform Installed**: [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
- **Key Pair**: Create an AWS key pair or use an existing one.

---

## 📂 Project Structure

```
├── main.tf             # Main Terraform configuration file
├── outputs.tf          # Output values for the Terraform configuration
├── variables.tf        # Input variables for the Terraform configuration
├── terraform.tfvars    # Create a reusable file for all the variables
├── README.md           # Project documentation
```
---

## 🛠️ Setup Instructions

**1️⃣ Clone the Repository**
```
git clone https://github.com/rushi2828/terraform-jenkins-aws.git
cd <your-repo>
```

**2️⃣ Initialize Terraform**
```
terraform init
```
**3️⃣ Plan the Infrastructure**
```
terraform plan
```
**4️⃣ Apply the Configuration**
```
terraform apply -auto-approve
```

---

## 📤 Outputs
After successful deployment, Terraform will provide the following outputs:

- **🌐 Jenkins URL:** The public IP to access Jenkins in your browser.
- **📄 Instance Details:** Information about the EC2 instance

---

## 🌟 Accessing Jenkins
1. Open the Jenkins URL in your browser:
```
http://<public-ip>:8080
```
2. 🔑 SSH into the EC2 instance to retrieve the initial admin password:
```
ssh -i <your-key-pair.pem> ec2-user@<public-ip>
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
3. Paste the password into the Jenkins setup screen to complete the setup.

---

## 🧹 Cleaning Up
- To destroy the infrastructure
```
terraform destroy -auto-approve
```
