#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from yoshino
include device/sony/yoshino/BoardConfigCommon.mk

DEVICE_PATH := device/sony/maple

# Kernel
TARGET_KERNEL_CONFIG := lineage_maple_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

TARGET_INIT_VENDOR_LIB := libinit_maple
TARGET_RECOVERY_DEVICE_MODULES := libinit_maple

# inherit from the proprietary version
include vendor/sony/maple/BoardConfigVendor.mk
