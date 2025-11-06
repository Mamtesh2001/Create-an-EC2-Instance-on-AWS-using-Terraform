

# 🚀 Create an EC2 Instance on AWS using Terraform

This guide provides **step-by-step instructions** for provisioning an **Amazon EC2 instance** using **Terraform**.  
It’s designed for beginners to help understand how Terraform interacts with AWS infrastructure.

---

## 🧩 Prerequisites

Before starting, make sure you have:

1. **Terraform Installed** — [Download & Install Terraform](https://developer.hashicorp.com/terraform/downloads)
2. **AWS Account** — [Sign up here](https://aws.amazon.com/)
3. **Access Key & Secret Key** — You can generate these from the [AWS IAM Console](https://console.aws.amazon.com/iam/home)

---

---

## ⚙️ Step 1 — Create the `main.tf` File


📝 Note:
Replace <your-access-key> and <your-secret-key> with your actual AWS credentials.

⚠️ Avoid hardcoding credentials in production.
Instead, use environment variables or an AWS credentials file in ~/.aws/credentials.

⚡ Step 2 — Initialize Terraform
In your terminal, navigate to your project directory and run:


terraform init

This command will:

Initialize Terraform

Download the AWS provider plugin

Prepare your working directory for use

You should see output like:


Terraform has been successfully initialized!

🔍 Step 3 — Generate a Terraform Plan
To preview what Terraform will create, execute:


terraform plan

Terraform will analyze your configuration and display a list of resources that it will provision on AWS.

Example output:
Plan: 1 to add, 0 to change, 0 to destroy.


🏗️ Step 4 — Apply the Terraform Configuration
To actually create your EC2 instance, run:


terraform apply

Terraform will show you the execution plan and ask for confirmation.

Type yes and press Enter.

Once completed, Terraform will output your instance details (like public_ip, id, etc.).

🧹 Step 5 — Destroy the Infrastructure (Optional)
To delete the EC2 instance when you’re done, run:

terraform destroy

Confirm with yes to remove the instance and all related resources.

🪄 Expected Output
Once applied successfully, you can check your AWS Management Console → EC2 Dashboard,
and you should see a running instance named Terraform_ec2.
