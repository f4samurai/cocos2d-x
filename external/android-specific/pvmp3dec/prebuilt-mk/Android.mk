LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := ../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libpvmp3dec.a
ifeq ($(TARGET_ARCH),arm)
else
endif


LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../src \
$(LOCAL_PATH)/../include

LOCAL_CFLAGS := \
        -D"OSCL_UNUSED_ARG(x)=(void)(x)"

LOCAL_CFLAGS += -Werror
LOCAL_CLANG := true
LOCAL_SANITIZE := signed-integer-overflow

LOCAL_MODULE := libpvmp3dec

LOCAL_ARM_MODE := arm

include $(PREBUILT_STATIC_LIBRARY)
