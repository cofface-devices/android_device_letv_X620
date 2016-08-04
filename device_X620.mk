$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# The gps config appropriate for this device

$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/letv/X620/X620-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/letv/X620/overlay
include $(call all-subdir-makefiles)
LOCAL_PATH := device/letv/X620

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):zImage


#Add cofface prop

PRODUCT_PROPERTY_OVERRIDES += \
	ro.weibo.com=weibo.com/cofface \
	ro.build.model=s2_plus \
	ro.product.letv_model=Le X620

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_X620
PRODUCT_DEVICE := X620