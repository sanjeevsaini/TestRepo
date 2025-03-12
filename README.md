# AWS Analytics Platform

This repository contains Terraform code to provision an analytics platform on AWS. The platform integrates multiple AWS services for ETL and orchestration.

## Components

- **Amazon S3**: Storage for raw data.
- **AWS Lambda**: Processes data from S3 and inserts it into PostgreSQL RDS.
- **Amazon RDS (PostgreSQL)**: Stores the structured data.
- **AWS Glue**: ETL processes for transforming data stored in RDS.
- **Amazon MWAA**: Orchestrates the ETL and Lambda functions.

## Setup Instructions

### Prerequisites

- AWS Account
- Terraform
- AWS CLI configured
- GitHub repository for version control

### Steps to Deploy

1. Clone this repository:
   ```bash
   git clone https://github.com/ideayabio/Clinical-Analytics.git
   cd Clinical-Analytics
2. Add the valued for the variables in dev.tfvars. You can also provide it in the terminal and its sensitive
   ```bash
   rds_password = "your-secure-password-here"
3. Initialize Terraform:
   ```bash
   terraform init
4.  Run the Terraform plan and pass input file as argument:
   ```bash
   terraform plan --var-file="dev.tfvars"
5.  Apply the configuration:
   ```bash
   terraform apply --var-file="dev.tfvars"
