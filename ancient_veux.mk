#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from veux device
$(call inherit-product, device/xiaomi/veux/device.mk)
$(call inherit-product, vendor/miuicamera/config.mk)

# Inherit some common ancient stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)
TARGET_USES_AOSP_RECOVERY := true
ANCIENT_OFFICIAL := true
ANCIENT_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_INCLUDE_PIXEL_CHARGER := true

PRODUCT_NAME := ancient_veux
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X4 Pro 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="veux-user 12 SKQ1.211006.001 V13.0.2.0.SKCMIXM release-keys"

BUILD_FINGERPRINT := POCO/veux_p_global/veux:12/SKQ1.211006.001/V13.0.2.0.SKCMIXM:user/release-keys
