# Azure Infrastructure Deployment using Terraform

This Terraform project automates the provisioning of basic Azure infrastructure components including:

- Two Resource Groups (for separation of compute and storage)
- Windows Virtual Machine
- Storage Account
- Public IP
- Network Interface
- Subnet
- (Optional) Virtual Network

## Project Structure

.
├── main.tf               → Entry point (can be empty or orchestration)
├── rg.tf                 → Resource groups
├── vm.tf                 → Windows VM configuration
├── stroage.tf            → Azure storage account
├── publicip.tf           → Public IP resource
├── nic.tf                → Network Interface Card
├── subnet.tf             → Subnet configuration
├── vnet.tf (optional)    → Virtual Network (if used)
├── variables.tf          → Input variables declaration
├── terraform.tfvars      → Variable values
├── outputs.tf (optional) → Outputs after deployment
└── providers.tf          → Provider setup (Terraform and Azure)

## How to Use

1. Initialize Terraform  
   `terraform init`

2. Format and Validate  
   `terraform fmt`  
   `terraform validate`

3. Plan the Infrastructure  
   `terraform plan -var-file="terraform.tfvars"`

4. Apply the Configuration  
   `terraform apply -var-file="terraform.tfvars"`

5. Destroy the Infrastructure (if needed)  
   `terraform destroy -var-file="terraform.tfvars"`

## Prerequisites

- Terraform CLI installed
- Azure Subscription
- Azure Service Principal Credentials:
  - client_id
  - client_secret
  - tenant_id
  - subscription_id

⚠️ **NOTE:**  
- For security, avoid hardcoding secrets. Use environment variables or secret managers.  
- You can skip credentials in `providers.tf` if you're authenticated using Azure CLI (`az login`).

---

**Happy Automating!** 🚀
