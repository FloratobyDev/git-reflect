![Git Reflect Logo](git-reflect-logo.png?raw=true "Title")

# Git Reflect

Git Reflect is a web application that listens to Git pushes and allows users to attach commit IDs/SHAs to their journal. It combines task management and journaling with GitHub API integrations, offering a structured way to track development progress and reflections.

## Features
- **Commit-Linked Journaling**: Attach commit IDs/SHAs to journal entries to track progress.
- **Task Management**: Organize tasks with Git integration to streamline development workflows.
- **GitHub API Integration**: Seamlessly pull commit data from GitHub.
- **Real-Time Updates**: Experience instant updates using WebSockets.
- **Secure Authentication**: User management and authentication through Amazon Cognito.
- **Cloud-Based Storage**: Fast and reliable data management using AWS services.
- **TailwindCSS (Utility-First Styling)**: Responsive and maintainable UI.
- **TypeScript**: Ensuring better type safety and maintainability.

## Tech Stack
- **Frontend**:
  - React
  - TypeScript
  - TailwindCSS
  
- **Backend**:
  - Node.js
  - Express
  
- **AWS Services**:
  - ECS (Elastic Container Service) for container orchestration
  - ECR (Elastic Container Registry) for Docker image storage
  - RDS (Relational Database Service) for data persistence
  - CloudFront for content delivery
  - Route 53 for DNS management
  - Cognito for user authentication and management
  - Application Load Balancer for traffic distribution
  - VPC for networking and security
  - CloudWatch for monitoring and logging

- **Infrastructure as Code**:
  - Terraform for AWS resource management

## Installation

### Prerequisites
- Node.js (latest LTS recommended)
- AWS CLI configured
- Terraform installed
- Docker installed
- AWS account with appropriate permissions

### Setup
```sh
# Clone the repository
git clone https://github.com/your-repo/git-reflect.git
cd git-reflect

# Install dependencies
yarn install # or npm install

# Initialize Terraform
cd terraform
terraform init

# Apply infrastructure changes
terraform plan
terraform apply

# Start the development server
yarn dev # or npm run dev

