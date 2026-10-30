#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from benz device
$(call inherit-product, device/oneplus/benz/device.mk)

# Inherit some common AxionAOSP stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_benz
PRODUCT_DEVICE := benz
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2613

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1790175267562 release-keys" \
    BuildFingerprint=OnePlus/CPH2613IN/OP5D3FL1:16/TP1A.220905.001/U.R4T2.12d17b3_133a34b_1288ae7:user/release-keys \
    DeviceName=OP5D3FL1 \
    DeviceProduct=CPH2613 \
    SystemDevice=OP5D3FL1 \
    SystemName=CPH2613

# AxionAOSP Flags
TARGET_BOOT_ANIMATION_RES := 1080
AXION_MAINTAINER := Klaus_Mikaelson
AXION_PROCESSOR := Snapdragon®_7_Gen_3
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 16
TARGET_INCLUDE_AXFX := true
TARGET_INCLUDES_LOS_PREBUILTS := true
TORCH_STR_SUPPORTED := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true
TARGET_INCLUDE_GOOGLE_TELECOMM := false
TARGET_INCLUDE_PARTNER_SETUP := true
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := walt
BYPASS_CHARGE_SUPPORTED := true
BYPASS_CHARGE_TOGGLE_PATH := /sys/class/oplus_chg/battery/mmi_charging_enable
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode
TARGET_ENABLE_BLUR := true
PRODUCT_SYSTEM_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1
