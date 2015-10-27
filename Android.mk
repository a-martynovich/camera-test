LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PACKAGE_NAME := camera-test
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
# LOCAL_CERTIFICATE := shared
LOCAL_SDK_VERSION := current
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-appcompat android-support-v4
LOCAL_PROGUARD_ENABLED:=disabled
include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := android-support-v7-appcompat:libs/android-support-v7-appcompat.jar android-support-v4:libs/android-support-v4.jar
include $(BUILD_MULTI_PREBUILT)
