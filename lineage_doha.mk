# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# A/B Updater
AB_OTA_UPDATER := true

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/motorola/doha/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Discard inherited values and use our own instead.
PRODUCT_NAME := lineage_doha
PRODUCT_DEVICE := doha
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := moto g8 plus
TARGET_DEVICE := Moto G8 Plus
PRODUCT_SYSTEM_NAME := Moto G8 Plus
TARGET_VENDOR := motorola

# Fingerprint
VENDOR_RELEASE := 9/PPIS29.65-24-2/dc7f7b:user/release-keys
BUILD_FINGERPRINT := motorola/doha_retail/doha:$(VENDOR_RELEASE)
PLATFORM_SECURITY_PATCH_OVERRIDE := 2019-11-01

# vendor
$(call inherit-product, vendor/motorola/doha/doha-vendor.mk)
