#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/rhode/device.mk)

# Inherit some common SuperiorOS stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080
DEVICE_MAINTAINERS := "elkusanagi"

# Additional stuff for this product.
TARGET_INCLUDE_PIXEL_CHARGER := true
SUPERIOR_UDFPS_ANIMATIONS := true
USE_AOSP_DIALER := true
TARGET_GAPPS_ARCH := arm64
USE_DOTGALLERY := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := superior_rhode
PRODUCT_DEVICE := rhode
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g52
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/rhode_g/rhode:12/S1SRS32.38-132-14/c4430-03865f:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=rhode_g \
    PRIVATE_BUILD_DESC="rhode_g-user 12 S1SRS32.38-132-14 c4430-03865f release-keys"
