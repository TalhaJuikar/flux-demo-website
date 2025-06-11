# Flux Kustomization Demo

A demonstration project showing how to use Flux CD with Kustomize for GitOps deployments across multiple environments.

## Overview

This repository demonstrates a complete GitOps workflow using:
- **Flux CD** for continuous deployment
- **Kustomize** for environment-specific configurations
- A simple **demo website** deployed across dev, staging, and prod environments

## Project Structure

```
├── Dockerfile              # Container image for demo website
├── index.html              # Demo website content
├── styles.css              # Website styling
├── entrypoint.sh           # Container entrypoint script
├── gitrepository.yaml      # Flux GitRepository resource
├── clusters/               # Flux Kustomization manifests
│   ├── dev/
│   ├── staging/
│   └── prod/
└── demo-website/
    ├── base/               # Base Kubernetes manifests
    └── overlays/           # Environment-specific patches
        ├── dev/
        ├── staging/
        └── prod/
```

## Quick Start

1. **Deploy Flux to your cluster:**
   ```bash
   flux bootstrap github --owner=<your-username> --repository=<repo-name>
   ```

2. **Apply the GitRepository:**
   ```bash
   kubectl apply -f gitrepository.yaml
   ```

3. **Deploy to an environment:**
   ```bash
   kubectl apply -f clusters/dev/kustomization.yaml
   ```

## Environment Configuration

Each environment (dev/staging/prod) has its own Kustomization overlay that applies environment-specific patches for:
- Resource limits and requests
- Ingress hostnames
- Environment variables (background colors)
- Replica counts

## Features

- 🚀 GitOps workflow with Flux CD
- 🔧 Multi-environment deployments with Kustomize
- 🌐 Demo website with environment-specific styling
- 📦 Container-based deployment
- ⚡ Automatic synchronization every 5 minutes