LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := ccets

LOCAL_MODULE_FILENAME := libets

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../../prebuilt/android/$(TARGET_ARCH_ABI)/libets.a

LOCAL_WHOLE_STATIC_LIBRARIES := cc_core
#LOCAL_WHOLE_STATIC_LIBRARIES += ccnet
LOCAL_WHOLE_STATIC_LIBRARIES += ext_box2d
LOCAL_WHOLE_STATIC_LIBRARIES += ext_bullet

LOCAL_CXXFLAGS += -fexceptions


LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../. \
$(LOCAL_PATH)/../.. \
$(LOCAL_PATH)/../GUI/CCControlExtension \
$(LOCAL_PATH)/../GUI/CCScrollView
                    
include $(PREBUILT_STATIC_LIBRARY)
