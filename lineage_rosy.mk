#
# Copyright (C) The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common RiceDroid stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

RICE_CHIPSET := MSM8953
RICE_MAINTAINER := "A³-Project"
SUSHI_BOOTANIMATION := 720
TARGET_ENABLE_BLUR := false
TARGET_HAS_UDFPS := false
TARGET_KERNEL_OPTIONAL_LD := true
TARGET_USE_PIXEL_FINGERPRINT := false
TARGET_OPTOUT_GOOGLE_TELEPHONY := false
TARGET_BUILD_GRAPHENEOS_CAMERA := true
ifneq (,$(WITH_GMS))
    TARGET_CORE_GMS := true
    TARGET_CORE_GMS_EXTRAS := true
endif

# Inherit from rosy device
$(call inherit-product, device/xiaomi/rosy/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_rosy
PRODUCT_DEVICE := rosy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720
TARGET_BOOTANIMATION_HALF_RES := true

# GApps
TARGET_GAPPS_ARCH := arm64

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := rosy

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rosy-user 7.1.2 N2G47H V9.2.3.0.NDAMIEK release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/rosy/rosy:7.1.2/N2G47H/V9.2.3.0.NDAMIEK:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
