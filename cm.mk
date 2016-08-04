#
# Copyright 2016 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := X620

#$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/letv/X620/device_X620.mk)

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X620
PRODUCT_NAME := cm_X620
PRODUCT_BRAND := LeEco
PRODUCT_MODEL := Le X620
PRODUCT_MANUFACTURER := LeMobile

COFFACE_PRODUCT_DEVICE := le_x6
COFFACE_BUILD_PRODUCT := s2_plus
COFFACE_PRODUCT_NAME := Le2_CN1
