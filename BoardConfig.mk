DEVICE_PATH := device/motorola/surfna
BOARD_VENDOR := motorola

# Security patch level
VENDOR_SECURITY_PATCH := 2019-10-01

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml

# Platform    
TARGET_BOARD_PLATFORM := MSM8940                                                                
TARGET_NO_BOOTLOADER := true

# GPU
TARGET_BOARD_PLATFORM_GPU := qcm_adreno505

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8940

# Filesystems
TARGET_USERIMAGES_USE_EXT4:= true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_serial_dm,0x78B0000 vmalloc=300M firmware_class.path=/vendor/firmware_mnt/image androidboot.usbconfigfs=true loop.max_part=7 printk.devkmsg=on androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/motorola/surfna
TARGET_KERNEL_CONFIG := msm8937-perf_defconfig
 
# 64 Bit Binder Userspace                                                       
#TARGET_USES_64_BIT_BINDER := true

TARGET_SYSTEM_PROP := device/motorola/surfna/system.prop
TARGET_RECOVERY_FSTAB := device/motorola/surfna/rootdir/etc/recovery.fstab

# Storage Lun File Path
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

TARGET_USES_MKE2FS := true
TARGET_KMODULES := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 32768000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 49152000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2768896000
BOARD_CACHEIMAGE_PARTITION_SIZE := 262144000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10997743000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true


-include vendor/motorola/surfna/BoardConfigVendor.mk
