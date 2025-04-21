# 🧰 DevOps + Java Devbox Environment

A full-featured, Devbox-powered, reproducible DevOps environment for engineers who also work with Java.

## 🚀 What’s Included

### ✅ Core Tools
- git, curl, wget, jq, yq, htop, ripgrep, bat, fzf, exa, tmux, direnv

### ☁️ Cloud CLIs
- AWS CLI, Azure CLI, Google Cloud SDK, DigitalOcean CLI, IBM Cloud CLI

### 🔧 Infrastructure as Code
- Terraform, Ansible, Vault, SOPS

### 🐳 Containers & Kubernetes
- Docker CLI, kubectl, Helm, Kustomize, kind, Minikube, Skaffold

### 🔐 Security Tools
- Trivy, Checkov, tfsec, gitleaks, openscap, lynis, clamav

### 📈 Monitoring & Logging
- Prometheus, Grafana, Loki, Telegraf, InfluxDB

### ☕ Java Dev Stack
- OpenJDK 11 & 17, Maven, Gradle

### 🧪 Runtime Environments
- Python 3, Node.js, Go

### 📦 Version Managers (via `bootstrap.sh`)
- pyenv, nvm, asdf

### 💻 CI/CD & GitOps
- GitHub CLI, GitLab Runner CLI, Jenkins CLI, CircleCI CLI

### 🛢️ Databases
- PostgreSQL CLI, MySQL CLI, Redis CLI

### 🌐 Postman Automation
- Newman (installed via npm)

---

## 🧰 What's Inside?

✅ Cloud CLIs: AWS, Azure, GCP, DO, IBM  
✅ IaC: Terraform, Ansible, Vault, SOPS  
✅ K8s: kubectl, Helm, Kustomize, kind, minikube  
✅ Security: Trivy, Checkov, tfsec, gitleaks, ClamAV, OpenSCAP  
✅ Monitoring: Prometheus, Grafana, Loki, Telegraf, InfluxDB  
✅ Java Tooling: JDK 11 & 17, Maven, Gradle  
✅ Runtimes: Node.js, Python3, Go  
✅ Version Managers: pyenv, nvm, asdf  
✅ CI/CD: GitHub, GitLab, Jenkins, CircleCI  
✅ DB CLIs: PostgreSQL, MySQL, Redis  
✅ DevTools: jq, yq, tmux, neovim, exa, bat, ripgrep, direnv  

## 📁 FINAL DIRECTORY STRUCTURE

```bash
devcontainer/
├── devbox.json         # Clean Devbox config (JSON-compliant)
├── bootstrap.sh        # Post-init setup (external tools + env)
├── check-tools.sh      # Tool validation script
└── README.md           # Full documentation + usage guide
```

## 🛠 Setup

1. Install Devbox:

```bash
curl -fsSL https://get.jetpack.io/devbox | bash
```

2. Clone this repo and enter the folder:

```bash
cd devcontainer
devbox shell
```

Devbox will install all tools and run the bootstrap script.

## ✅ After setup
Run the tool check manually (if needed):

```bash
./check-tools.sh
```

All green? You're good to go. 🚀


