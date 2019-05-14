LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := ccs

LOCAL_MODULE_FILENAME := libccs

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libccs.a


LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../..


LOCAL_CFLAGS += -fexceptions

LOCAL_WHOLE_STATIC_LIBRARIES := ccui
LOCAL_WHOLE_STATIC_LIBRARIES += ccds
#LOCAL_WHOLE_STATIC_LIBRARIES += ext_flatbuffers

include $(PREBUILT_STATIC_LIBRARY)
