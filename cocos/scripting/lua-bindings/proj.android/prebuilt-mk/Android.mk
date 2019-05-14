LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cclua_android

LOCAL_MODULE_FILENAME := libluaccandroid

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libluaccandroid.a


LOCAL_EXPORT_LDLIBS := -lGLESv2 \
                       -llog \
                       -landroid

LUA_STATIC_LIB := ext_luajit
LUA_IMPORT_PATH := lua/luajit/prebuilt/android
LUA_INCLUDE_PATH := $(LOCAL_PATH)/../../../../external/lua/luajit/include

LOCAL_WHOLE_STATIC_LIBRARIES := $(LUA_STATIC_LIB)

include $(PREBUILT_STATIC_LIBRARY)

#==============================================================

include $(CLEAR_VARS)

LOCAL_MODULE    := cclua_static

LOCAL_MODULE_FILENAME := libluacc

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../../../../../prebuilt/android/$(TARGET_ARCH_ABI)/libluacc.a

#Component
#3d

#cocosdenshion

#network

#cocosbuilder

#cocostudio

#spine

#ui

#extension
#physics3d
#navmesh

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../../../../external/lua/tolua \
$(LOCAL_PATH)/../$(LUA_INCLUDE_PATH) \
$(LOCAL_PATH)/../../auto \
$(LOCAL_PATH)/../../manual \
$(LOCAL_PATH)/../../manual/cocos2d \
$(LOCAL_PATH)/../../manual/3d \
$(LOCAL_PATH)/../../manual/cocosdenshion \
$(LOCAL_PATH)/../../manual/audioengine \
$(LOCAL_PATH)/../../manual/network \
$(LOCAL_PATH)/../../manual/cocosbuilder \
$(LOCAL_PATH)/../../manual/cocostudio \
$(LOCAL_PATH)/../../manual/spine \
$(LOCAL_PATH)/../../manual/extension \
$(LOCAL_PATH)/../../manual/ui \
$(LOCAL_PATH)/../../manual/navmesh \
$(LOCAL_PATH)/../../../../..

LOCAL_WHOLE_STATIC_LIBRARIES := cclua_android

LOCAL_WHOLE_STATIC_LIBRARIES += cc_static

include $(PREBUILT_STATIC_LIBRARY)

$(call import-module, $(LUA_IMPORT_PATH)/prebuilt-mk)
$(call import-module, cocos/prebuilt-mk)
