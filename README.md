# mathverse-platform-infra
Prepared Mathverse application Infra on GKE using Gitlabs, tearraform,ci/cd integration

<img width="1280" height="720" alt="image" src="https://github.com/user-attachments/assets/cbef3c4d-38db-49ab-835b-dfcb9a939719" />

<img width="1147" height="860" alt="image" src="https://github.com/user-attachments/assets/5d3b2afa-120f-4977-9243-1d42b20bcac4" />

<img width="1512" height="860" alt="image" src="https://github.com/user-attachments/assets/fc0f2620-02a9-48f0-8390-dae3b7ca9aa3" />

<img width="986" height="491" alt="image" src="https://github.com/user-attachments/assets/0f5c41ec-331f-4c31-8652-2503142a444f" />

<img width="1881" height="2016" alt="image" src="https://github.com/user-attachments/assets/29214b28-8f3c-4c79-8d11-7daa28f9e7f0" />

<img width="751" height="514" alt="image" src="https://github.com/user-attachments/assets/a61661a8-5d5a-4b56-85ea-065266160bb9" />

<img width="985" height="729" alt="image" src="https://github.com/user-attachments/assets/e5d908bf-036a-433c-bfe2-15b6a4ec800d" />




**🔹 Core Components**
Infra (Terraform - Modular)
VPC
Subnets
GKE Cluster
Artifact Registry
IAM + Service Accounts
App Layer
Dockerized FastAPI
Deployed on Kubernetes
Deployment Layer
Helm (base templates)
Kustomize (env overrides)
CI/CD



🧩 Terraform Structure (Production Style)

We WILL NOT write everything in one file.

📁 Structure
terraform/
│
├── modules/
│   ├── vpc/
│   ├── gke/
│   ├── artifact_registry/
│
├── environments/
│   ├── dev/
│   ├── test/
│   ├── prod/
│
├── backend.tf
├── provider.tf
🔐 Security Posture (Built-in from Start)



Private GKE cluster (no public nodes)
IAM least privilege
Workload Identity (later step)
Network isolation
Secrets handling


** 📋** **Full Roadmap**


🟢 **Phase 1 — Foundation**
- Setup GitLab + connect GitHub
- Setup GCP project + auth
- Setup Terraform backend (state management)
  
🟡 **Phase 2 — Terraform Core**
- Build VPC module
- Build Subnet module
- Build GKE module
- Build Artifact Registry
  
🔵 **Phase 3 — Application Layer**
- Dockerize FastAPI
- Push image to Artifact Registry
  
🟣 **Phase 4 — Kubernetes**
- Deploy app via raw YAML
- Understand Deployment / Service / Ingress
  
🟠 **Phase 5 — Helm & Kustomize**

- Convert YAML → Helm
- Add Kustomize overlays
  
🔴 **Phase 6 — CI/CD**

- GitLab pipeline:
- Build
- Push
- Deploy
  
⚫ **Phase 7 — Production Hardening**
-Secrets management
-Autoscaling
-Monitoring
