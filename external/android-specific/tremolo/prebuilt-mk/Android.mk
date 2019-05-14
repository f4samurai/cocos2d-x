LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := ../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libext_vorbisidec.a

# Disable arm optimization which will cause the issue https://github.com/cocos2d/cocos2d-x/issues/17148
# ifeq ($(TARGET_ARCH),arm)
# LOCAL_SRC_FILES += \
# 	Tremolo/bitwiseARM.s \
# 	Tremolo/dpen.s \
# 	Tremolo/floor1ARM.s \
# 	Tremolo/mdctARM.s
# LOCAL_CFLAGS += \
#     -D_ARM_ASSEM_
# # Assembly code in asm_arm.h does not compile with Clang.
# LOCAL_CLANG_ASFLAGS_arm += \
#     -no-integrated-as
# else
LOCAL_CFLAGS += \
    -DONLY_C
# endif
LOCAL_CFLAGS+= -O2

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/Tremolo
	
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/..

LOCAL_ARM_MODE := arm

LOCAL_MODULE := ext_vorbisidec

include $(PREBUILT_STATIC_LIBRARY)
