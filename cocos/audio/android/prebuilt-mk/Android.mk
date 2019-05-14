LOCAL_PATH := $(call my-dir)

#New AudioEngine
include $(CLEAR_VARS)

LOCAL_MODULE := audio

LOCAL_MODULE_FILENAME := libaudio

LOCAL_SRC_FILES := ../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libaudio.a


LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../include

LOCAL_EXPORT_LDLIBS := -lOpenSLES


LOCAL_WHOLE_STATIC_LIBRARIES += ext_vorbisidec ext_pvmp3dec
include $(PREBUILT_STATIC_LIBRARY)

#SimpleAudioEngine
include $(CLEAR_VARS)

LOCAL_MODULE := ccds

LOCAL_MODULE_FILENAME := libccds

LOCAL_SRC_FILES := ../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libccds.a

LOCAL_WHOLE_STATIC_LIBRARIES := audio
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../include


include $(PREBUILT_STATIC_LIBRARY)

$(call import-module, android-specific/tremolo/prebuilt-mk)
$(call import-module, android-specific/pvmp3dec/prebuilt-mk)
