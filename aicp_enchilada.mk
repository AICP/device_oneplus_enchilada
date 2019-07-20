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

#TWRP
BUILD_TWRP := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from enchilada device
$(call inherit-product, device/oneplus/enchilada/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

PRODUCT_NAME := aicp_enchilada
PRODUCT_DEVICE := enchilada
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A6000

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

TARGET_VENDOR_PRODUCT_NAME := OnePlus6
TARGET_VENDOR_DEVICE_NAME := OnePlus6

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="doc HD (semdoc), Carlos Solano (csolanol)"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus6 \
    PRODUCT_NAME=OnePlus6 \
    PRIVATE_BUILD_DESC="OnePlus6-user 8.1.0 OPM1.171019.011 273 release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus6/OnePlus6:8.1.0/OPM1.171019.011/06140300:user/release-keys


# TWRP Support
ifeq ($(BUILD_TWRP),true)
include $(LOCAL_PATH)/twrp.mk
endif
