#
# Copyright (C) 2018 The LineageOS Project
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
#

# Inherit device configuration
$(call inherit-product, device/samsung/a5y17lte/device.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_a5y17lte
PRODUCT_DEVICE := a5y17lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A520F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Fingerprint
BUILD_FINGERPRINT := "samsung/a5y17ltexx/a5y17lte:8.0.0/R16NW/A520FXXU8CSB5:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a5y17ltexx-user 8.0.0 R16NW A520FXXU8CSB5 release-keys" \
    PRODUCT_NAME="a5y17lte" \
    TARGET_DEVICE="a5y17lte"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# Vendor security patch
VENDOR_SECURITY_PATCH := 2020-01-01

# Gapps
TARGET_GAPPS_ARCH := arm64

#EvoX
config_deviceHardwareKeys := true
config_deviceHardwareWakeKeys := true
#CUSTOM_BUILD_TYPE = OFFICIAL
#config_showNavigationBar := true