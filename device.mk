#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.mt6765 \
    factory_init.rc \
    init.sensor_1_0.rc \
    factory_init.project.rc \
    factory_init.connectivity.rc \
    init.mt6765.usb.rc \
    meta_init.project.rc \
    multi_init.rc \
    meta_init.rc \
    init.modem.rc \
    init.project.rc \
    init.aee.rc \
    init.ago.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    init.connectivity.rc \
    init.mt6765.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 27

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)


# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/cereus/cereus-vendor.mk)
