# Azure Web Platform – Terraform

A production-style Azure infrastructure project built with Terraform to demonstrate Infrastructure as Code, modular design, Azure security, monitoring, identity, and CI/CD using GitHub Actions.

## Project Overview

This project provisions the supporting infrastructure for an Azure web platform using reusable Terraform modules.

The project demonstrates practical experience with:

- Terraform Infrastructure as Code
- Modular Terraform architecture
- Microsoft Azure
- Managed Identity
- Azure RBAC
- Azure Key Vault
- Azure Storage
- Log Analytics
- Application Insights
- Azure Monitor diagnostic settings
- GitHub Actions CI/CD
- OpenID Connect (OIDC) authentication between GitHub and Azure

## Architecture

The Terraform configuration includes:

- Azure Resource Group
- Azure Storage Account
- User Assigned Managed Identity
- Azure Key Vault
- Key Vault RBAC assignment
- Log Analytics Workspace
- Application Insights
- Azure Monitor Diagnostic Settings

**Azure Region:** UK South  
**Environment:** Development

## Repository Structure

```text
02-terraform-azure-web-platform/
├── .github/
│   └── workflows/
│       └── terraform.yml
├── docs/
├── environments/
│   └── dev/
├── modules/
├── .gitignore
└── README.md
```

The `modules` directory contains reusable Terraform components, while `environments/dev` contains the development environment configuration.

## Security

Security controls implemented include:

- GitHub Actions authentication to Azure using OIDC
- No Azure client secret stored in GitHub
- Azure RBAC
- User Assigned Managed Identity
- Key Vault using RBAC authorization
- Storage HTTPS-only enforcement
- Minimum TLS version 1.2
- Storage public nested-item access disabled

## Monitoring

The platform includes:

- Azure Log Analytics
- Application Insights
- Azure Monitor Diagnostic Settings

These provide the foundation for centralized logging, application monitoring, and diagnostics.

## CI/CD

GitHub Actions automatically validates the Terraform configuration.

The workflow performs:

1. Checkout repository
2. Authenticate to Azure using OIDC
3. Install Terraform
4. Run `terraform fmt`
5. Run `terraform init`
6. Run `terraform validate`
7. Run `terraform plan`

The workflow runs when changes are pushed to the `main` branch and for pull requests.

## GitHub Actions Authentication

The project uses GitHub Actions OIDC federation with Microsoft Entra ID.

This removes the need to store long-lived Azure client secrets in GitHub. GitHub Actions obtains short-lived credentials through the federated identity configuration and authenticates directly to Azure.

The GitHub identity is assigned Azure RBAC permissions required for Terraform planning.

## Terraform Plan

The GitHub Actions pipeline successfully completes Terraform validation and planning.

Current CI validation result:

```text
Plan: 8 to add, 0 to change, 0 to destroy.
```

The CI workflow intentionally performs `terraform plan` rather than automatically applying infrastructure changes. This keeps infrastructure changes reviewable before deployment.

## App Service Note

An Azure App Service implementation was explored as part of the project.

Deployment was not completed because of Azure subscription/service availability constraints in the development environment. The supporting Terraform module structure was retained to demonstrate the intended architecture.

## Skills Demonstrated

- Microsoft Azure
- Terraform
- Infrastructure as Code (IaC)
- Git and GitHub
- GitHub Actions
- CI/CD
- OIDC / Workload Identity Federation
- Microsoft Entra ID
- Azure RBAC
- Managed Identity
- Azure Key Vault
- Azure Monitor
- Log Analytics
- Application Insights
- Cloud security

## Project Status

- Infrastructure configuration: Complete
- Terraform validation: Passed
- GitHub Actions CI: Passed
- Azure OIDC authentication: Passed
- Terraform Plan: Passed