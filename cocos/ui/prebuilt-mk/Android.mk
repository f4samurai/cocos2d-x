LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := ccui

LOCAL_MODULE_FILENAME := libui

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../../../prebuilt/android/$(TARGET_ARCH_ABI)/libui.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../editor-support


LOCAL_WHOLE_STATIC_LIBRARIES := ccets

include $(PREBUILT_STATIC_LIBRARY)
