#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from r1q device
$(call inherit-product, device/samsung/r1q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_r1q
PRODUCT_DEVICE := r1q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A805F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Screen density
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=r1q \
    TARGET_BOOTLOADER_BOARD_NAME=sm6150 \
    PRODUCT_NAME=r1qxx \
    PRIVATE_BUILD_DESC="r1qxx-user 10 QP1A.190711.020 A805FXXU4BTF7 release-keys"

BUILD_FINGERPRINT := "samsung/r1qxx/r1q:10/QP1A.190711.020/A805FXXU4BTF7:user/release-keys"
