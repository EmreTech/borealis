mkfile_path	:=	$(abspath $(lastword $(MAKEFILE_LIST)))
current_dir	:=	$(BOREALIS_PATH)/$(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

LIBS		:=	-ldeko3d -lm $(LIBS)

include $(TOPDIR)/$(current_dir)/extern/switch-libpulsar/deps.mk

SOURCES		:=	$(SOURCES) \
				$(current_dir)/lib/core \
				$(current_dir)/lib/views \
				$(current_dir)/lib/platforms/switch \
				$(current_dir)/extern/glad \
				$(current_dir)/extern/nanovg-deko3d/source \
				$(current_dir)/extern/nanovg-deko3d/source/framework \
				$(current_dir)/extern/nanovg-deko3d/shaders \
				$(current_dir)/extern/libretro-common/compat \
				$(current_dir)/extern/libretro-common/encodings \
				$(current_dir)/extern/libretro-common/features \
				$(current_dir)/extern/nxfmtwrapper \
				$(current_dir)/extern/yoga/src/yoga/event \
				$(current_dir)/extern/yoga/src/yoga \
				$(current_dir)/extern/tinyxml2/ \
				$(addprefix $(current_dir)/extern/switch-libpulsar/, $(PLSR_SOURCES))

INCLUDES	:=	$(INCLUDES) \
				$(current_dir)/include \
				$(current_dir)/extern/fmt/include \
				$(current_dir)/extern/yoga/src \
				$(current_dir)/extern/nanovg-deko3d/include \
				$(current_dir)/extern/tweeny/include \
				$(current_dir)/extern \
				$(current_dir)/extern/tinyxml2 \
				$(addprefix $(current_dir)/extern/switch-libpulsar/, $(PLSR_INCLUDES))

CXXFLAGS := $(CXXFLAGS) -DYG_ENABLE_EVENTS -fdata-sections -DBRLS_RESOURCES="\"romfs:/\""
