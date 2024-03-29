#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

$(call inherit-product, device/motorola/addison/full_addison.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := addison
PRODUCT_NAME := viper_addison
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/addison/addison:7.1.1/NPN26.107/22:user/release-keys \
    PRIVATE_BUILD_DESC="addison-user 7.1.1 NPN26.107 22 release-keys" \
    PRODUCT_NAME="Moto Z Play"

# Support Official
export VIPER_BUILD_TYPE=Official

# OTAUpdate
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.romname=$(PRODUCT_NAME) \
    ro.ota.version=$(shell date +%Y%m%d) \
ro.ota.manifest=https://raw.githubusercontent.com/Viper0S/android_vendor_ViperOTA/n-mr1/$(PRODUCT_NAME).xml
