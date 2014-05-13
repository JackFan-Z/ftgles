LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

FTGLES_LOCAL_PATH := $(LOCAL_PATH)
FTGL_SRC_LOCATION := ../../ftgles

# $(info $(FTGLES_LOCAL_PATH))
# $(info $(FTGL_SRC_LOCATION))

LOCAL_MODULE := ftgles

LOCAL_C_INCLUDES += $(FTGLES_LOCAL_PATH)/$(FTGL_SRC_LOCATION) \
	$(FTGLES_LOCAL_PATH)/$(FTGL_SRC_LOCATION)/src \
	$(FTGLES_LOCAL_PATH)/$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/include

LOCAL_EXPORT_C_INCLUDES += $(LOCAL_C_INCLUDES)

LOCAL_SRC_FILES := \
    $(FTGL_SRC_LOCATION)/src/FTBuffer.cpp \
    $(FTGL_SRC_LOCATION)/src/FTCharmap.cpp \
    $(FTGL_SRC_LOCATION)/src/FTContour.cpp \
    $(FTGL_SRC_LOCATION)/src/FTFace.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGlyphContainer.cpp \
    $(FTGL_SRC_LOCATION)/src/FTLibrary.cpp \
    $(FTGL_SRC_LOCATION)/src/FTPoint.cpp \
    $(FTGL_SRC_LOCATION)/src/FTSize.cpp \
    $(FTGL_SRC_LOCATION)/src/FTVectoriser.cpp \
    $(FTGL_SRC_LOCATION)/src/FTFont/FTBitmapFont.cpp \
    $(FTGL_SRC_LOCATION)/src/FTFont/FTBufferFont.cpp \
    $(FTGL_SRC_LOCATION)/src/FTFont/FTFont.cpp \
    $(FTGL_SRC_LOCATION)/src/FTFont/FTFontGlue.cpp \
    $(FTGL_SRC_LOCATION)/src/FTFont/FTOutlineFont.cpp \
    $(FTGL_SRC_LOCATION)/src/FTFont/FTPixmapFont.cpp \
    $(FTGL_SRC_LOCATION)/src/FTFont/FTPolygonFont.cpp \
    $(FTGL_SRC_LOCATION)/src/FTFont/FTTextureFont.cpp \
    $(FTGL_SRC_LOCATION)/src/FTFont/FTExtrudeFont.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGL/ftglesGlue.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGlyph/FTBitmapGlyph.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGlyph/FTBufferGlyph.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGlyph/FTGlyph.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGlyph/FTGlyphGlue.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGlyph/FTOutlineGlyph.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGlyph/FTPixmapGlyph.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGlyph/FTPolygonGlyph.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGlyph/FTTextureGlyph.cpp \
    $(FTGL_SRC_LOCATION)/src/FTGlyph/FTExtrudeGlyph.cpp \
    $(FTGL_SRC_LOCATION)/src/FTLayout/FTLayout.cpp \
    $(FTGL_SRC_LOCATION)/src/FTLayout/FTLayoutGlue.cpp \
    $(FTGL_SRC_LOCATION)/src/FTLayout/FTSimpleLayout.cpp \
    $(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libtess/dict.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libtess/geom.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libtess/memalloc.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libtess/mesh.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libtess/normal.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libtess/priorityq.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libtess/render.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libtess/sweep.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libtess/tess.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libtess/tessmono.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libutil/error.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libutil/glue.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libutil/project.c \
	$(FTGL_SRC_LOCATION)/src/iGLU-1.0.0/libutil/registry.c

# LOCAL_CFLAGS    := -Wall
# LOCAL_LDLIBS    := -llog -lGLESv1_CM

LOCAL_CFLAGS += --rtti -DGL_GLEXT_PROTOTYPES
LOCAL_LDLIBS := -ldl -lGLESv1_CM -lGLESv2 -llog

LOCAL_STATIC_LIBRARIES := freetype2-static

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
#LOCAL_PATH := $(call my-dir)
FREETYPE_LOCATION := /Users/jackf/OpenSource/OpenGL/freetype2-android/Android/jni/Android.mk
include $(FREETYPE_LOCATION)