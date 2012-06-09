#
# Copyright (C) 2011 The CyanogenMod Project
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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/quincyatt/quincyatt-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/quincyatt/overlay

# Kernel and modules
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/samsung/quincyatt/prebuilt/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    device/samsung/quincyatt/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/samsung/quincyatt/modules/cls_flow.ko:system/lib/modules/cls_flow.ko \
    device/samsung/quincyatt/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
    device/samsung/quincyatt/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/samsung/quincyatt/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    device/samsung/quincyatt/modules/evbug.ko:system/lib/modules/evbug.ko \
    device/samsung/quincyatt/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/samsung/quincyatt/modules/ksapi.ko:system/lib/modules/ksapi.ko \
    device/samsung/quincyatt/modules/lcd.ko:system/lib/modules/lcd.ko \
    device/samsung/quincyatt/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
    device/samsung/quincyatt/modules/msm_tsif.ko:system/lib/modules/msm_tsif.ko \
    device/samsung/quincyatt/modules/qce.ko:system/lib/modules/qce.ko \
    device/samsung/quincyatt/modules/qcedev.ko:system/lib/modules/qcedev.ko \
    device/samsung/quincyatt/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
    device/samsung/quincyatt/modules/sch_dsmark.ko:system/lib/modules/sch_dsmark.ko \
    device/samsung/quincyatt/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/samsung/quincyatt/modules/spidev.ko:system/lib/modules/spidev.ko \
    device/samsung/quincyatt/modules/tsif_chrdev.ko:system/lib/modules/tsif_chrdev.ko \
    device/samsung/quincyatt/modules/vibrator.ko:system/lib/modules/vibrator.ko

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/quincyatt/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \

# Inherit from quincy-common
$(call inherit-product, device/samsung/quincy-common/quincy-common.mk)

$(call inherit-product-if-exists, vendor/samsung/quincyatt/quincyatt-vendor.mk)