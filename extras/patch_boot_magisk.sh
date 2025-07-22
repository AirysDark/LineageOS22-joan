#!/bin/bash
# Automatically patch boot.img with Magisk after build (requires Magisk binary and boot.img)

MAGISK_ZIP="Magisk-v26.4.zip"
BOOT_IMG="out/target/product/joan/boot.img"
OUTPUT_DIR="magisk_patched"

mkdir -p $OUTPUT_DIR

echo "[*] Patching $BOOT_IMG using $MAGISK_ZIP..."
unzip -o "$MAGISK_ZIP" -d ./magisk
cp "$BOOT_IMG" ./magisk/boot.img

cd magisk
./install.sh boot.img
mv new-boot.img "../$OUTPUT_DIR/boot_magisk.img"
cd ..

echo "[✓] Magisk patched image saved to $OUTPUT_DIR/boot_magisk.img"
