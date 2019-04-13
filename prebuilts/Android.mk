# Copyright (C) 2019, The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fingerprint.msm8937

ifeq ($(TARGET_KERNEL_VERSION), 4.9)
LOCAL_SRC_FILES_64 := arm64/fingerprint.msm8937_4.9.so
LOCAL_SRC_FILES_32 := arm/fingerprint.msm8937_4.9.so
else
LOCAL_SRC_FILES_64 := arm64/fingerprint.msm8937.so
LOCAL_SRC_FILES_32 := arm/fingerprint.msm8937.so
endif

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)
