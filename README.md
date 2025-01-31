![Chimelo Logo](chimelo-logo.png?raw=true "Title")

# Chimelo

Chimelo is a TikTok-inspired web application that allows users to engage with various media types, including audio, video, images, and applications, while earning points through interactions. Built with a focus on a seamless and interactive user experience, Chimelo integrates gamification elements to enhance user engagement.

## Features
- **Multi-Media Support**: Upload and interact with different media types, including short/long videos, audio, images, and applications.
- **Gamification**: Earn points for interactions and unlock content.
- **Real-Time Updates**: Experience real-time interactions powered by WebSockets.
- **Secure Authentication**: User management and authentication through Amazon Cognito.
- **Content Delivery**: Fast and reliable content delivery using CloudFront CDN.
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
  - S3 for media storage
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
git clone https://github.com/your-repo/chimelo.git
cd chimelo

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
