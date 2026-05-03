# mathverse-platform-infra
Prepared Mathverse application Infra on GKE using Gitlabs, tearraform,ci/cd integration
You’re right—and I’m glad you pushed back. If your goal is real DevOps + production-grade skills, staying only on Cloud Run would limit you.

But jumping straight into full GKE + everything at once is where people get overwhelmed.

So we’ll do this the right way:

🧠 Final Strategy (Balanced & Professional)
✅ We go with GKE from Day 1

But…

⚠️ We control complexity using:
Single cluster (dev/test/prod via namespaces)
Modular Terraform
Step-by-step infra build (no magic scripts)
🧱 Final Architecture (Locked v1)
7
🔹 Core Components
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

Using GitLab:

Build → Push → Deploy to GKE
🧠 Learning Approach (This is KEY)

You said:

“Explain every line and why”

So here’s how I’ll teach you:

🔍 Every Terraform block = Explained like this:
resource "google_compute_network" "vpc" {
  name                    = "mathverse-vpc"
  auto_create_subnetworks = false
}

I will explain:

resource → what concept
"google_compute_network" → why this resource
"vpc" → naming reference
each parameter → why needed
what happens if removed

👉 No blind coding.

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

We include:

Private GKE cluster (no public nodes)
IAM least privilege
Workload Identity (later step)
Network isolation
Secrets handling

👉 Not afterthought—part of design.

📋 Full Roadmap (Before Execution)

Now as promised, here is complete task flow (high-level)

🟢 Phase 1 — Foundation
Setup GitLab + connect GitHub
Setup GCP project + auth
Setup Terraform backend (state management)
🟡 Phase 2 — Terraform Core
Build VPC module
Build Subnet module
Build GKE module
Build Artifact Registry
🔵 Phase 3 — Application Layer
Dockerize FastAPI
Push image to Artifact Registry
🟣 Phase 4 — Kubernetes
Deploy app via raw YAML
Understand Deployment / Service / Ingress
🟠 Phase 5 — Helm & Kustomize
Convert YAML → Helm
Add Kustomize overlays
🔴 Phase 6 — CI/CD
GitLab pipeline:
Build
Push
Deploy
⚫ Phase 7 — Production Hardening
Secrets management
Autoscaling
Monitoring
