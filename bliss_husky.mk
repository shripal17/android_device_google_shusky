#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_husky.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/shusky/husky/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := bliss_husky

TARGET_BOOT_ANIMATION_RES := 1080

# Bliss build type
BLISS_BUILDTYPE := OFFICIAL

# Device related
TARGET_SUPPORTS_QUICK_TAP := true

# Gapps
TARGET_STOCK_GAPPS := true

# UDFPS Animations
EXTRA_UDFPS_ANIMATIONS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 AP2A.240905.003 12231197 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/AP2A.240905.003/12231197:user/release-keys

$(call inherit-product, vendor/google/husky/husky-vendor.mk)

RECOVERY_IMAGES := boot.img,dtbo.img,init_boot.img,vendor_boot.img,vendor_kernel_boot.img,vbmeta.img