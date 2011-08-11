# Get the local path and assign it so we can recall it
# after the modules have been installed.
LOCAL_PATH := $(call my-dir)
MY_LOCAL_PATH := $(LOCAL_PATH)


# Install the freetype2 module
include ../../freetype2-android/Android/jni/module.mk

# For some reason, LOCAL_PATH points to the build tool's core
# directory after the shared library is installed.

LOCAL_PATH := $(MY_LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE := ftgles

LOCAL_CFLAGS := -DANDROID_NDK \
		-DFT2_BUILD_LIBRARY=1

FTGLES_PATH := ../ftgles/src

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include_all \
			../../freetype2-android/include \
			../../freetype2-android/include/freetype \
			../../freetype2-android/include/freetype/config \
			../../freetype2-android/include/freetype/internal \
			../ftgles \
			$(FTGLES_PATH)/ \
			$(FTGLES_PATH)/iGLU-1.0.0/include

LOCAL_SRC_FILES := \
	$(FTGLES_PATH)/FTBuffer.cpp \
	$(FTGLES_PATH)/FTCharmap.cpp \
	$(FTGLES_PATH)/FTContour.cpp \
	$(FTGLES_PATH)/FTFace.cpp \
	$(FTGLES_PATH)/FTFont/FTFont.cpp \
	$(FTGLES_PATH)/FTFont/FTFontGlue.cpp \
	$(FTGLES_PATH)/FTFont/FTOutlineFont.cpp \
	$(FTGLES_PATH)/FTFont/FTPolygonFont.cpp \
	$(FTGLES_PATH)/FTFont/FTTextureFont.cpp \
	$(FTGLES_PATH)/FTGL/ftglesGlue.cpp \
	$(FTGLES_PATH)/FTGlyph/FTGlyph.cpp \
	$(FTGLES_PATH)/FTGlyph/FTGlyphGlue.cpp \
	$(FTGLES_PATH)/FTGlyph/FTOutlineGlyph.cpp \
	$(FTGLES_PATH)/FTGlyph/FTPolygonGlyph.cpp \
	$(FTGLES_PATH)/FTGlyph/FTTextureGlyph.cpp \
	$(FTGLES_PATH)/FTGlyphContainer.cpp \
	$(FTGLES_PATH)/FTLayout/FTLayout.cpp \
	$(FTGLES_PATH)/FTLayout/FTLayoutGlue.cpp \
	$(FTGLES_PATH)/FTLayout/FTSimpleLayout.cpp \
	$(FTGLES_PATH)/FTLibrary.cpp \
	$(FTGLES_PATH)/FTPoint.cpp \
	$(FTGLES_PATH)/FTSize.cpp \
	$(FTGLES_PATH)/FTVectoriser.cpp \
	$(FTGLES_PATH)/iGLU-1.0.0/libtess/dict.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libtess/geom.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libtess/memalloc.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libtess/mesh.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libtess/normal.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libtess/priorityq.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libtess/render.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libtess/sweep.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libtess/tess.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libtess/tessmono.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libutil/error.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libutil/glue.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libutil/project.c \
	$(FTGLES_PATH)/iGLU-1.0.0/libutil/registry.c

LOCAL_STATIC_LIBRARIES += freetype2-prebuilt

LOCAL_LDLIBS := -lGLESv1_CM -llog -ldl -lstdc++

include $(BUILD_SHARED_LIBRARY)