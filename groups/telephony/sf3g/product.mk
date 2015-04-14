PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=false \

PRODUCT_PACKAGES += \
    libauddriver \
    librpc-ril \

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \

# Inherit from common Open Source Telephony product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        rild.libpath=/system/lib/librpc-ril.so \

