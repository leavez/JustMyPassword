include $(THEOS)/makefiles/common.mk

INSTALL_TARGET_PROCESSES = com.apple.Passbook

TWEAK_NAME = JustMyPassword

JustMyPassword_FILES = Tweak.xm
JustMyPassword_CFLAGS = -fobjc-arc

export TARGET = iphone:clang
export ARCHS = armv7 arm64 arm64e
export TARGET_IPHONEOS_DEPLOYMENT_VERSION = 13.0

include $(THEOS_MAKE_PATH)/tweak.mk
