#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

# Inherit Camera-related flags
TARGET_USES_MIUI_CAMERA := true
TARGET_INCLUDES_MIUI_CAMERA := true

# Enable UI enhancements
TARGET_ENABLE_BLUR := true

# Enable features
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := true
TARGET_FACE_UNLOCK_SUPPORTED := true
USE_PIXEL_CHARGING := true

# Lunaris
WITH_BCR := true
WITH_GMS := true
TARGET_USE_MAPS := true
TARGET_USE_FILES := true
USE_ADVANCED_DISPLAY_COLOR := true
USE_REALITY_ENGINE := true
TARGET_NEEDS_VULKAN_MEDIA_FIX := true

TARGET_SUPPORTED_REFRESH_RATES := 60,120

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=POCO/alioth_global/alioth:13/TKQ1.221114.001/V816.0.5.0.TKHMIXM:user/release-keys
