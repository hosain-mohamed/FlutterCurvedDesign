# Introduction

## How to Use The Generated HELM Charts

### Prerequisites

- Install [Helm](https://helm.sh/docs/intro/install/)
- Install Kubernetes cluster locally or use a cloud provider. This cluster will be responsible for deploying the generated HELM charts.
- Install Crossplane and Cloud providers

```bash
$> helm repo add \
crossplane-stable https://charts.crossplane.io/stable
$> helm repo update
$> helm install crossplane \
crossplane-stable/crossplane \
--namespace crossplane-system \
--create-namespace
```

Install cloud providers

```bash
$> cat <<EOF | kubectl apply -f -
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-aws
spec:
  package: xpkg.upbound.io/crossplane-contrib/provider-aws:v0.48.1
EOF

$> cat <<EOF | kubectl apply -f -
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-azure
spec:
  package: xpkg.upbound.io/crossplane-contrib/provider-azure:v0.20.0
EOF

$> cat <<EOF | kubectl apply -f -
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-gcp
spec:
  package: xpkg.upbound.io/crossplane-contrib/provider-gcp:v0.22.0
EOF
```
