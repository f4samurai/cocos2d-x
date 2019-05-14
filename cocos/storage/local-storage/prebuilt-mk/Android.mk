LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := ccstorage

LOCAL_MODULE_FILENAME := libstorage

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libstorage.a


LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../..



LOCAL_WHOLE_STATIC_LIBRARIES := cc_core

include $(PREBUILT_STATIC_LIBRARY)
