# acme-argocd-agent-charts

Helm chart repository for [argocd-agent](https://github.com/argoproj-labs/argocd-agent) components, packaged and extended by Appspace Platform Engineering.

## Charts

| Chart | Current Version | Source |
|-------|----------------|--------|
| [`argocd-agent-principal`](charts/argocd-agent-principal) | 0.3.2 | Hub (control plane) component |
| [`argocd-agent-agent`](charts/argocd-agent-agent) | 0.2.2 | Spoke (managed cluster) component |

## Usage

```bash
helm repo add acme-argocd-agent https://appspace-cloud.github.io/acme-argocd-agent-charts
helm repo update
```

Install the principal on the hub cluster:

```bash
helm install argocd-agent-principal acme-argocd-agent/argocd-agent-principal \
  --namespace argocd --version 0.3.2
```

Install the agent on each spoke cluster:

```bash
helm install argocd-agent acme-argocd-agent/argocd-agent-agent \
  --namespace argocd --version 0.2.2
```

## Changes from upstream

Charts are based on [argoproj-labs/argocd-agent](https://github.com/argoproj-labs/argocd-agent). Notable additions:

- **`principal.jwt.enabled`** (v0.3.2): controls whether the JWT signing key secret is mounted. Set to `false` when using mTLS-only authentication to remove the JWT secret dependency.

## Releases

Chart packages are published as [GitHub Releases](https://github.com/appspace-cloud/acme-argocd-agent-charts/releases) and served via [GitHub Pages](https://appspace-cloud.github.io/acme-argocd-agent-charts).
