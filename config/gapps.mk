# Call Gapps
$(call inherit-product-if-exists, vendor/opengapps/build/opengapps-packages.mk)

# Gapps Varient
GAPPS_VARIANT := nano

# Gapps to add
GAPPS_PRODUCT_PACKAGES += \
     Chrome \
     DigitalWellbeing \
     SoundPicker \
     Drive \
     FaceLock \
     PrebuiltGmail \
     Velvet

GAPPS_FORCE_MATCHING_DPI := true
WITH_DEXPREOPT := true
