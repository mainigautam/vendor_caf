ifeq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=1
else
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=0
endif

# Build Snapdragon apps
PRODUCT_PACKAGES += \
    SnapdragonGallery \
    SnapdragonMusic  \
    CMFileManager \
    messaging \

# Build sound recorder
PRODUCT_PACKAGES += SoundRecorder

# Build WallpaperPicker
PRODUCT_PACKAGES += WallpaperPicker
