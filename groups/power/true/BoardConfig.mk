{{#app_launch_boost}}
APP_LAUNCH_BOOST := true
{{/app_launch_boost}}

BOARD_SEPOLICY_M4DEFS += module_power=true
BOARD_SEPOLICY_DIRS += device/intel/sepolicy/power