# Audio logging property for audio driver
ifeq ($(TARGET_BUILD_VARIANT),eng)
PRODUCT_PROPERTY_OVERRIDES += persist.audio.log=2
else ifeq ($(TARGET_BUILD_VARIANT),userdebug)
PRODUCT_PROPERTY_OVERRIDES += persist.audio.log=1
else
PRODUCT_PROPERTY_OVERRIDES += persist.audio.log=0
endif
{{#digmic}}
# Use digital microphone
PRODUCT_PROPERTY_OVERRIDES += persist.audio.digmic=1
{{/digmic}}

#Enable low latency stream
PRODUCT_PROPERTY_OVERRIDES += persist.audio.low_latency=1

#Enable deep buffer for video playback
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.audio.deep=true

#Enable awesome player for audio playback
PRODUCT_PROPERTY_OVERRIDES += media.awesome-local-audio=0

#Route Mic 1 to DigMic2 and  Mic 2 to DigMic1
#This is specific to SoFIA LTE MRD platforms
ifneq (,$(findstring sltmrd,$(TARGET_PRODUCT)))
    PRODUCT_PROPERTY_OVERRIDES += persist.audio.dmic_path_select=3
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_deep.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_hw_uta.conf:system/etc/audio_hw_uta.conf \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:vendor/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:vendor/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    audio.primary.$(TARGET_BOARD_PLATFORM) \
    audio.r_submix.default \
    libauddriver \
    libintel_audio_effects \
    tinyplay \
    tinymix \
    tinycap \
    audio.a2dp.default \
    audio_daemon \
    audio.usb.default

#Enable imas_gti tool
ifeq ($(TARGET_BUILD_VARIANT),eng userdebug)
PRODUCT_PACKAGES_DEBUG += imas_gti
endif

