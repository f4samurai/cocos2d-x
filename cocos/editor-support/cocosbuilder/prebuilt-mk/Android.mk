LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := ccb

LOCAL_MODULE_FILENAME := libccb

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libccb.a

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../..


LOCAL_WHOLE_STATIC_LIBRARIES := ccets

include $(PREBUILT_STATIC_LIBRARY)
