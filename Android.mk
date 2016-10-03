LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Superuser
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := eng debug optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := su_daemon
LOCAL_OVERRIDES_PACKAGES := su
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := eng debug optional
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_INSTALLED_MODULE_STEM := $(LOCAL_OVERRIDES_PACKAGES)
LOCAL_SRC_FILES := $(LOCAL_INSTALLED_MODULE_STEM)_$(TARGET_ARCH)

LOCAL_INIT_RC := superuser.rc

include $(BUILD_PREBUILT)
