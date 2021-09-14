#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/venus/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

EXTRA_FOD_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_NAME := evolution_venus
PRODUCT_DEVICE := venus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=venus \
    PRODUCT_NAME=evolution_venus \
    PRIVATE_BUILD_DESC="missi-user 11 RKQ1.200928.002 21.9.1 release-keys "

# Build fingerprint
BUILD_FINGERPRINT := "Xiaomi/venus/venus:11/RKQ1.200928.002/21.9.1:user/release-keys"
