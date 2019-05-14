LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := ccjs_android

LOCAL_MODULE_FILENAME := libjsccandroid

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libjsccandroid.a


LOCAL_EXPORT_LDLIBS := -lGLESv2 \
                       -llog \
                       -lz \
                       -landroid

LOCAL_WHOLE_STATIC_LIBRARIES := ext_spidermonkey

include $(PREBUILT_STATIC_LIBRARY)

#==============================================================

include $(CLEAR_VARS)

LOCAL_MODULE := ccjs_static

LOCAL_MODULE_FILENAME := libjscc

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libjscc.a


LOCAL_CFLAGS := -DCOCOS2D_JAVASCRIPT

LOCAL_EXPORT_CFLAGS := -DCOCOS2D_JAVASCRIPT



LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../manual \
$(LOCAL_PATH)/../../manual/navmesh \
$(LOCAL_PATH)/../../auto \
$(LOCAL_PATH)/../../../../audio/include

LOCAL_WHOLE_STATIC_LIBRARIES := ccjs_android

LOCAL_WHOLE_STATIC_LIBRARIES += cc_static
LOCAL_WHOLE_STATIC_LIBRARIES += ccstorage

include $(PREBUILT_STATIC_LIBRARY)

$(call import-module, cocos/prebuilt-mk)
$(call import-module, spidermonkey/prebuilt/android)
$(call import-module, cocos/storage/local-storage/prebuilt-mk)
