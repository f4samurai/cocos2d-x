LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cc_core

LOCAL_MODULE_FILENAME := libcc_core

LOCAL_ARM_MODE := arm

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
MATHNEONFILE := math/MathUtil.cpp.neon
else
MATHNEONFILE := math/MathUtil.cpp
endif

LOCAL_SRC_FILES := ../../prebuilt/android/$(TARGET_ARCH_ABI)/libcc_core.a


LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/.. \
$(LOCAL_PATH)/../. \
$(LOCAL_PATH)/../.. \
$(LOCAL_PATH)/../../external \
$(LOCAL_PATH)/../../external/tinyxml2 \
$(LOCAL_PATH)/../../external/unzip \
$(LOCAL_PATH)/../../external/chipmunk/include/chipmunk \
$(LOCAL_PATH)/../../external/bullet/include/bullet \
$(LOCAL_PATH)/../../external/xxhash \
$(LOCAL_PATH)/../../external/nslog \
$(LOCAL_PATH)/../../external/poly2tri \
$(LOCAL_PATH)/../../external/poly2tri/common \
$(LOCAL_PATH)/../../external/poly2tri/sweep \
$(LOCAL_PATH)/../../external/clipper \
$(LOCAL_PATH)/../../external/uv/include


LOCAL_EXPORT_LDLIBS := -lGLESv2 \
                       -llog \
                       -landroid

LOCAL_WHOLE_STATIC_LIBRARIES := ext_freetype2
LOCAL_WHOLE_STATIC_LIBRARIES += ext_png
LOCAL_WHOLE_STATIC_LIBRARIES += ext_jpeg
LOCAL_WHOLE_STATIC_LIBRARIES += ext_tiff
LOCAL_WHOLE_STATIC_LIBRARIES += ext_webp
LOCAL_WHOLE_STATIC_LIBRARIES += ext_chipmunk 
LOCAL_WHOLE_STATIC_LIBRARIES += ext_zlib
#LOCAL_WHOLE_STATIC_LIBRARIES += ext_ssl
LOCAL_WHOLE_STATIC_LIBRARIES += ext_recast
LOCAL_WHOLE_STATIC_LIBRARIES += ext_bullet

LOCAL_WHOLE_STATIC_LIBRARIES += ccandroid
LOCAL_WHOLE_STATIC_LIBRARIES += cpufeatures

# define the macro to compile through support/zip_support/ioapi.c
LOCAL_CFLAGS   :=  -DUSE_FILE32API
LOCAL_CFLAGS   +=  -fexceptions

# Issues #9968
#ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
#    LOCAL_CFLAGS += -DHAVE_NEON=1
#endif

LOCAL_CPPFLAGS := -Wno-deprecated-declarations
LOCAL_EXPORT_CFLAGS   := -DUSE_FILE32API
LOCAL_EXPORT_CPPFLAGS := -Wno-deprecated-declarations

include $(PREBUILT_STATIC_LIBRARY)

#==============================================================

include $(CLEAR_VARS)

LOCAL_MODULE := cc_static
LOCAL_MODULE_FILENAME := libcc
LOCAL_SRC_FILES := ../../prebuilt/android/$(TARGET_ARCH_ABI)/libcc.a

LOCAL_WHOLE_STATIC_LIBRARIES := ccs
LOCAL_WHOLE_STATIC_LIBRARIES += ccb
LOCAL_WHOLE_STATIC_LIBRARIES += cc3d
#LOCAL_WHOLE_STATIC_LIBRARIES += ccnet
LOCAL_WHOLE_STATIC_LIBRARIES += audio
LOCAL_WHOLE_STATIC_LIBRARIES += spine

include $(PREBUILT_STATIC_LIBRARY)
#==============================================================
$(call import-module,android/cpufeatures)
$(call import-module,freetype2/prebuilt/android)
$(call import-module, platform/android/prebuilt-mk)
$(call import-module,png/prebuilt/android)
$(call import-module,zlib/prebuilt/android)
$(call import-module,jpeg/prebuilt/android)
$(call import-module,tiff/prebuilt/android)
$(call import-module,webp/prebuilt/android)
$(call import-module,chipmunk/prebuilt/android)
$(call import-module, 3d/prebuilt-mk)
$(call import-module, audio/android/prebuilt-mk)
$(call import-module, editor-support/cocosbuilder/prebuilt-mk)
$(call import-module, editor-support/cocostudio/prebuilt-mk)
$(call import-module, editor-support/spine/prebuilt-mk)
#$(call import-module,network)
$(call import-module, ui/prebuilt-mk)
$(call import-module, extensions/prebuilt-mk)
$(call import-module,Box2D/prebuilt/android)
$(call import-module,bullet/prebuilt/android)
$(call import-module, recast/prebuilt-mk)
# $(call import-module,curl/prebuilt/android) 
$(call import-module,websockets/prebuilt/android)
#$(call import-module,openssl/prebuilt/android)
#$(call import-module,flatbuffers)
#$(call import-module,uv/prebuilt/android)
