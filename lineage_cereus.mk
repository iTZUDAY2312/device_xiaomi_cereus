#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cereus device
$(call inherit-product, device/xiaomi/cereus/device.mk)

PRODUCT_DEVICE := cereus
PRODUCT_NAME := lineage_cereus
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi 6
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cereus-user 9 PPR1.180610.011 V11.0.5.0.PCGMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/cereus/cereus:9/PPR1.180610.011/V11.0.5.0.PCGMIXM:user/release-keys
