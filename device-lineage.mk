#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# ANGLE - Almost Native Graphics Layer Engine
PRODUCT_PACKAGES += \
    ANGLE

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.mep.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.mep.xml \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# Kernel
TARGET_PREBUILT_KERNEL := device/google/shusky-kernel/Image.lz4

# PowerShare
include hardware/google/pixel/powershare/device.mk

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk

# Build necessary packages for vendor

# Codec2
PRODUCT_PACKAGES += \
    libexynosv4l2

# Graphics
PRODUCT_PACKAGES += \
    libEGL_angle \
    libGLESv1_CM_angle \
    libGLESv2_angle

# Identity credential
PRODUCT_PACKAGES += \
    android.hardware.identity_credential.xml

# Sensors
PRODUCT_PACKAGES += \
    sensors.dynamic_sensor_hal

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/app/AboutBliss/AboutBliss.apk \
    system/app/Covers/Covers.apk \
    system/app/Gramophone/Gramophone.apk \
    system/app/WeatherIcons/WeatherIcons.apk \
    system/etc/init/smartcharge-init.rc \
    system/etc/permissions/android.hardware.biometrics.face.xml \
    system/etc/permissions/org.lineageos.audio.xml \
    system/etc/permissions/org.lineageos.hardware.xml \
    system/etc/permissions/org.lineageos.livedisplay.xml \
    system/etc/permissions/org.lineageos.performance.xml \
    system/etc/permissions/org.lineageos.profiles.xml \
    system/etc/permissions/org.lineageos.settings.xml \
    system/etc/permissions/org.lineageos.trust.xml \
    system/etc/permissions/privapp-permissions-google.xml \
    system/etc/sensitive_pn.xml \
    system/fonts/RobotoFallback-VF.ttf \
    system/media/bootanimation.zip \
    system/priv-app/DocumentsUIGoogle/DocumentsUIGoogle.apk \
    system/etc/default-permissions/default_permissions_co.aospa.sense.xml \
    system/etc/permissions/privapp_whitelist_co.aospa.sense.xml \
    system/etc/sysconfig/hiddenapi-whitelist-co.aospa.sense.xml \
    system/lib64/libFaceDetectCA.so \
    system/lib64/libMegviiUnlock-jni-1.2.so \
    system/lib64/libMegviiUnlock.so \
    system/lib64/libmegface.so \
    system/priv-app/ParanoidSense/ParanoidSense.apk \
