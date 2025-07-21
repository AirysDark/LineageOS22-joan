# LineageOS 22 for LG V30+ (“joan” H930DS)

This repository builds **LineageOS 22.2 (Android 14)** for all LG V30 variants (joan/H930DS).

## ⚙️ Build Process

1. Go to the **Actions** tab and run the "Build LOS22 for LG V30+" workflow.
2. Wait ~1–3 hours (depends on runner specs).
3. Download your ZIP from the uploaded artifact in GitHub Actions.

## 🧩 Output

- `lineage-*.zip` – Flashable OS
- `boot.img`, `recovery.img` – Boot and recovery partitions
- `dtbo.img`, `vbmeta.img`, `super.img` – Optional, for fastboot flashing
- `kernel` – Kernel build output (zImage/dtb, optional)

## 🔧 Requirements

- Ubuntu Linux runner (22.04 or similar)
- Proprietary blobs managed automatically via TheMuppets vendor repo
- Java 17, Python, and standard LOS build tools
