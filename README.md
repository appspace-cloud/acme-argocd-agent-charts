# ACME ArgoCD Agent Charts

Public Helm chart repository for [argocd-agent](https://github.com/argoproj-labs/argocd-agent) components.
Packaged by Appspace Platform Engineering for use in COPS-2461 GitOps migration.

## Charts

| Chart | Version | Description |
|-------|---------|-------------|
| `argocd-agent-principal` | 0.3.1 | Hub component - receives agent connections and mediates ArgoCD API |
| `argocd-agent-agent` | 0.2.2 | Spoke component - connects outbound to the principal |

## Usage

```bash
helm repo add acme-argocd-agent https://appspace-cloud.github.io/acme-argocd-agent-charts
helm repo update
helm install argocd-agent-principal acme-argocd-agent/argocd-agent-principal --namespace argocd
```

## Source

Charts are based on the upstream [argoproj-labs/argocd-agent](https://github.com/argoproj-labs/argocd-agent) project.
