LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := ffmpeg
LOCAL_SRC_FILES := libffmpeg.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ffmpeginvoke
LOCAL_SRC_FILES := com_tangyx_video_ffmpeg_FFmpegRun.c ffmpeg.c ffmpeg_opt.c cmdutils.c ffmpeg_filter.c
LOCAL_C_INCLUDES := /Users/tangyx/Documents/ffmpeg-3.3.2
LOCAL_LDLIBS := -llog -lz -ldl
LOCAL_SHARED_LIBRARIES := ffmpeg

include $(BUILD_SHARED_LIBRARY)