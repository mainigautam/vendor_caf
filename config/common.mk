DEVICE_PACKAGE_OVERLAYS += vendor/caf/overlay/common

ifeq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=1
else
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=0
endif

CAF_TYPE ?= BETA
CAF_VERSION := $(PLATFORM_VERSION)-$(shell date +%Y%m%d)-$(CAF_TYPE)-$(CAF_DEVICE)-TEAMONE

# Include support for GApps backup
PRODUCT_COPY_FILES += \
    vendor/caf/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/caf/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/caf/prebuilt/bin/50-backuptool.sh:system/addon.d/50-backuptool.sh

ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/caf/prebuilt/bin/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/caf/prebuilt/bin/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/caf/prebuilt/bin/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

# Permissions
PRODUCT_COPY_FILES += \
    vendor/caf/prebuilt/common/etc/permissions/privapp-aosp-caf-permission.xml:/system/etc/permissions/privapp-aosp-caf-permission.xml

# Scripts
PRODUCT_COPY_FILES += \
    vendor/caf/prebuilt/common/etc/init/aosp-caf_updates.rc:system/etc/init/aosp-caf_updates.rc

# APNS
PRODUCT_COPY_FILES += \
    vendor/caf/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Disable qmi EAP-SIM security
DISABLE_EAP_PROXY := true

# Build Snapdragon apps
PRODUCT_PACKAGES += \
    Gallery \
    SnapdragonMusic  \
    CMFileManager \
    messaging \
    Launcher3QuickStep \
    Stk \
    Updater

# Build Themes
PRODUCT_PACKAGES += \
    DuiDarkTheme \
    GBoardDarkTheme \
    SettingsDarkTheme \
    SystemDarkTheme

# Build sound recorder
PRODUCT_PACKAGES += SoundRecorder

# Build WallpaperPicker
PRODUCT_PACKAGES += WallpaperPicker
