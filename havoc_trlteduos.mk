#
# Copyright (C) 2017-2018 The HavocOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common HavocOS phone.
$(call inherit-product, vendor/havoc/config/common.mk)

# Inherit from trlte device
$(call inherit-product, device/samsung/trlteduos/device.mk)

#export
HAVOC_BUILD_TYPE := Official

PRODUCT_PROPERTY_OVERRIDES += \
	ro.havoc.maintainer=Khalvat

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := havoc_trlteduos
PRODUCT_DEVICE := trlteduos
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := trlteduos
