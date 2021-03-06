BOARD_KERNEL_CMDLINE += vga=current nomodeset debug
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
USE_INTEL_UFO_DRIVER := false
INTEL_VA := false

# System's VSYNC phase offsets in nanoseconds
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 3200000

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

BOARD_GRAPHIC_IS_MALI := true
BOARD_SEPOLICY_DIRS += device/intel/sepolicy/graphics/mali-common
# Allow HWC to perform a final CSC on virtual displays
#TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
