#
# Copyright (C) 2017 The Android Open Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, device/google/cuttlefish/shared/device.mk)

PRODUCT_CHARACTERISTICS := tablet,nosdcard

PRODUCT_PROPERTY_OVERRIDES += \
    dhcp.rmnet0.dns1=8.8.8.8 \
    dhcp.rmnet0.gateway=192.168.1.1 \
    dhcp.rmnet0.ipaddress=192.168.1.10 \
    gsm.sim.operator.alpha=Android \
    gsm.sim.operator.iso-country=us \
    gsm.sim.operator.numeric=310260 \
    keyguard.no_require_sim=true \
    rild.libpath=/system/lib/libvsoc-ril.so \
    ro.cdma.home.operator.alpha=Android \
    ro.cdma.home.operator.numeric=310260 \
    ro.com.android.dataroaming=true \
    ro.gsm.home.operator.alpha=Android \
    ro.gsm.home.operator.numeric=310260 \

PRODUCT_PACKAGES += \
    MmsService \
    Phone \
    PhoneService \
    Telecom \
    TeleService \
    libvsoc-ril \
    libvsoc-ril-deprecated \
    libvsoc-ril-testing \
    rild \

PRODUCT_COPY_FILES += \
    device/google/cuttlefish/shared/config/apns-conf.xml:system/etc/apns-conf.xml \
    device/google/cuttlefish/shared/config/spn-conf.xml:system/etc/spn-conf.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \


