# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 TeamWin Recovery Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from manaus device
$(call inherit-product, device/motorola/manaus/device.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

PRODUCT_DEVICE := manaus
PRODUCT_NAME := twrp_manaus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto edge 40 neo
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="manaus_g_vext-user 12 T3TM33.23-141-2 f60e2 release-keys"

BUILD_FINGERPRINT := motorola/manaus_g_vext/manaus:12/T3TM33.23-141-2/f60e2:user/release-keys
