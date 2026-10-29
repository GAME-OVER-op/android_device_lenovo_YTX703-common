#
# Lenovo YTX703L - LineageOS 18.1 Lite
# Minimal MindTheGapps Android 11 integration
#

# ------------------------------------------------------------
# Minimal MindTheGapps
# ------------------------------------------------------------
#
# TARGET_IS_GROUPER suppresses the optional large Google apps
# in the official Android 11 MindTheGapps product layer:
# SetupWizard, TalkBack, Velvet, GoogleTTS, Markup, etc.
#

TARGET_IS_GROUPER := true
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
TARGET_IS_GROUPER :=

# ------------------------------------------------------------
# Device-specific debloat package
# ------------------------------------------------------------

PRODUCT_PACKAGES += \
    YTX703LDebloatStub

# Intentionally retained:
#
# PrebuiltGmsCore
# Phonesky
# GoogleServicesFramework
# GoogleContactsSyncAdapter
# GoogleCalendarSyncAdapter
# PartnerSetupPrebuilt
#
# LatinIME
# webview
# Snap
# Contacts
# Dialer
# messaging
# TrebuchetQuickStep
# DocumentsUI
# PermissionController
# LineageSetupWizard
#
# Wi-Fi / Bluetooth / GPS / RIL / media / DRM / thermal HALs
#
