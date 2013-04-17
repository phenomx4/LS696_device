$(call inherit-product, device/lge/m3s-common/m3s.mk)

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/LS696/LS696-vendor-blobs.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/LS696/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/lge/LS696/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
     $(LOCAL_KERNEL):kernel

PRODUCT_NAME			    := LS696
PRODUCT_DEVICE			    := LS696
PRODUCT_BRAND			    := lge
PRODUCT_MODEL			    := LG-LS696

PRODUCT_RELEASE_NAME		    := LG Optimus Elite
PRODUCT_VERSION_DEVICE_SPECIFIC	    := LS696ZV9
-include vendor/cyanogen/products/common_versions.mk

TARGET_OTA_ASSERT_DEVICE	    := m3s_sprint_us,m3s
PRODUCT_BUILD_PROP_OVERRIDES +=	\
	TARGET_PRODUCT=m3s_sprint_us \
	PRODUCT_DEVICE=m3s \
	TARGET_BUILD_VARIANT=user \
	BUILD_ID=ZV9.GWK74 \
	BUILD_DISPLAY_ID=ZV9.GWK74 \
	BUILD_NUMBER=47B8A055 \
	TARGET_BUILD_TYPE=user \
	BUILD_VERSION_TAGS=release-keys \
	PRODUCT_NAME=m3s_sprint_us \
	TARGET_BOOTLOADER_BOARD_NAME=lge_m3s \
	PRODUCT_MANUFACTURER=LGE \
	PRODUCT_DEFAULT_LANGUAGE=en \
	PRODUCT_DEFAULT_REGION=US \
	BUILD_FINGERPRINT="sprint_lge/m3s_sprint_us/m3s:2.3.7/ZV9.GWK74/47B8A055:user/release-keys" \
	PRIVATE_BUILD_DESC="m3s_sprint_us-user 2.3.7 ZV9.GWK74 47B8A055 release-keys"
