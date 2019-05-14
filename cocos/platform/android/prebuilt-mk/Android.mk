LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := ccandroid

LOCAL_MODULE_FILENAME := libccandroid

LOCAL_SRC_FILES := ../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libccandroid.a

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/..


LOCAL_EXPORT_LDLIBS := -lGLESv2 \
                       -lEGL \
                       -llog \
                       -landroid

include $(PREBUILT_STATIC_LIBRARY)
