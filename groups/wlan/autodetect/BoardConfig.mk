WPA_SUPPLICANT_VERSION := VER_2_1_DEVEL
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl

DEVICE_PACKAGE_OVERLAYS += device/intel/common/wlan/overlay-wifi-display
