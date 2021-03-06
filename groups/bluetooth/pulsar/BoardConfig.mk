BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_INTEL := true
BT_VENDOR_CONF_DIR := {{{vendor_conf}}}
BOARD_USE_IBT_STACK := {{{use_ibt}}}
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := hardware/intel/libbt-vendor-intel/conf/intel/{{{vendor_conf}}}/
DEVICE_PACKAGE_OVERLAYS += device/intel/common/bluetooth/overlay-bt-pan
DEVICE_PACKAGE_OVERLAYS += device/intel/common/bluetooth/overlay-hid-kb
BOARD_SEPOLICY_M4DEFS += bt_pulsar_port={{{port}}}
BOARD_SEPOLICY_DIRS += device/intel/sepolicy/bluetooth/common \
                       device/intel/sepolicy/bluetooth/pulsar
BOARD_HAVE_HCIVSSERVICE := {{{hci_vs_service}}}

{{#hci_vs_service}}
BOARD_SEPOLICY_DIRS += device/intel/sepolicy/bthcivsservice
{{/hci_vs_service}}

{{#gpp}}
ifeq ($(findstring cws_manu,$(BOARD_SEPOLICY_DIRS)),)
    BOARD_SEPOLICY_DIRS += device/intel/sepolicy/cws_manu
endif
{{/gpp}}
