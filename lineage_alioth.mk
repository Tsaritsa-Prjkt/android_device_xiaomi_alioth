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
TARGET_NEEDS_VULKAN_MEDIA_FIX := true

# Enable features
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := true
TARGET_FACE_UNLOCK_SUPPORTED := true
USE_PIXEL_CHARGING := true

# AxionOS specific features
TARGET_INCLUDE_AXFX := true

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 48,8,5
AXION_CAMERA_FRONT_INFO := 20
TARGET_SUPPORTED_REFRESH_RATES := 60,120

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := Yaseakun

# Flashlight strength
TORCH_STR_SUPPORTED := true

# Processor name (underscores become spaces)
AXION_PROCESSOR := Snapdragon_870_5G

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=POCO/alioth_global/alioth:13/TKQ1.221114.001/V816.0.5.0.TKHMIXM:user/release-keys
