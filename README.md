# CustomCADs Infra

This repository contains **all infrastructure-as-code (IaC)** for the CustomCADs platform.

It is the **single source of truth** for:
- Backend infrastructure
- Frontend infrastructure
- Databases
- Storage
- DNS
- Registries
- Environment separation (staging, production, etc.)

---

## 🧱 Responsibilities

This repo manages:
- Backend infrastructure (Render Web Services)
- PostgreSQL databases (Render)
- Frontend hosting (Cloudflare Workers)
- Object storage (Cloudflare R2)
- Container registry configuration (DockerHub)
- DNS & domain configuration (Namecheap)
- Environment separation (staging, production)

Application code **does not live here**.

---

## 📁 Repository Structure

```txt
Infra/
├─ modules/                # Reusable Terraform modules (no state, no providers)
│  ├─ db/
│  ├─ backend/
│  ├─ frontend/
│  ├─ buckets/
│  ├─ docker/
│  └─ dns/
│
├─ environments/
│  ├─ common/              # Global/shared infrastructure
│  │  ├─ dns/
│  │  └─ docker/
│  │
│  ├─ staging/             # Staging environment
│  │  ├─ db/
│  │  ├─ backend/
│  │  ├─ frontend/
│  │  └─ buckets/
│  │
│  └─ production/          # Production environment
│     ├─ db/
│     ├─ backend/
│     ├─ frontend/
│     └─ buckets/
```
