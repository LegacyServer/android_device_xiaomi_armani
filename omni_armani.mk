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

LOCAL_PATH := device/xiaomi/armani

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Charger
PRODUCT_PACKAGES += charger charger_res_images

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/twrp.fstab:root/etc/twrp.fstab

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := armani
PRODUCT_NAME := omni_armani
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := HM 1S
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=armani
