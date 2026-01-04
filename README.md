# CustomCADs Infra

This repository contains **all infrastructure-as-code (IaC)** for the CustomCADs platform.

It is the **single source of truth** for:
- Backend infrastructure
- Frontend infrastructure
- Databases & Buckets
- DNS & Zones

---

## 🧱 Responsibilities
[Visualization](https://www.tldraw.com/p/cQaqnLtLWLu24pVfNvP6v?d=v1274.-173.1845.1462.page)

This repo manages:
- Global infrastructure
- Environment-specific infrastructure

Application code **does not live here**.

---

## 📁 Repository Structure

```txt
Infra/
├─ global/              # Global/shared infrastructure
├─ staging/             # Staging environment
└─ production/          # Production environment
   ├─ backend/
      ├─ aws/
      └─ render/
   ├─ buckets/
      ├─ aws/
      └─ cloudflare/
   └─ frontend/
      ├─ aws/
      └─ cloudflare/
```
