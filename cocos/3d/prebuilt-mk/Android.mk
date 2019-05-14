LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := cc3d
LOCAL_ARM_MODE := arm

LOCAL_MODULE_FILENAME := libc3d

LOCAL_SRC_FILES := ../../../prebuilt/android/$(TARGET_ARCH_ABI)/libc3d.a

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../..


LOCAL_WHOLE_STATIC_LIBRARIES := cc_core

include $(PREBUILT_STATIC_LIBRARY)
