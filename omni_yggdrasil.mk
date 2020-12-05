# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := yggdrasil
PRODUCT_BRAND := Volla
PRODUCT_DEVICE := yggdrasil
PRODUCT_MANUFACTURER := Volla
PRODUCT_MODEL := Phone
PRODUCT_NAME := omni_yggdrasil

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="Volla Phone" \
    PRODUCT_NAME="yggdrasil" \
    PRIVATE_BUILD_DESC="full_k63v2_64_bsp-user 9 PPR1.180610.011 eng.helios.20201019.112318 dev-keys"

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.allow.mock.location=0
    
    # ADB Fix
PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.ffs.aio_compat=true


