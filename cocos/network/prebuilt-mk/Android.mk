LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := ccnet

LOCAL_MODULE_FILENAME := libnet

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../../../prebuilt/android/$(TARGET_ARCH_ABI)/libnet.a

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/..

LOCAL_WHOLE_STATIC_LIBRARIES := cc_core
LOCAL_WHOLE_STATIC_LIBRARIES += ext_websockets

include $(PREBUILT_STATIC_LIBRARY)
