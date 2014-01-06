

# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2013 The LiquidSmooth Project
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
PRODUCT_RELEASE_NAME := l900

# boot
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# device
$(call inherit-product, device/samsung/l900/full_l900.mk)

# telephony
$(call inherit-product, vendor/liquid/config/common_cdma.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := l900
PRODUCT_BRAND := samsung
PRODUCT_NAME := liquid_l900
PRODUCT_MODEL := SPH-L900
PRODUCT_MANUFACTURER := samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.l900.$(shell date +%m%d%y).$(shell date +%H%M%S)

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=I605VRAMC3 \
    PRODUCT_NAME=t0ltespr \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="t0ltespr-user 4.3 JSS15J L900VPUBMK4 release-keys" \
    BUILD_FINGERPRINT="samsung/t0ltespr/t0ltespr:4.3/JSS15J/L900VPUBMK4:user/release-keys"
