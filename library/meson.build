dep_glfw3 = dependency('glfw3', version : '>=3.3')
dep_glm   = dependency('glm', version : '>=0.9.8')

borealis_files = files(
    'lib/core/logger.cpp',
    'lib/core/application.cpp',
    'lib/core/i18n.cpp',
    'lib/core/theme.cpp',
    'lib/core/style.cpp',
    'lib/core/activity.cpp',
    'lib/core/platform.cpp',
    'lib/core/font.cpp',
    'lib/core/util.cpp',
    'lib/core/time.cpp',
    'lib/core/timer.cpp',
    'lib/core/animation.cpp',
    'lib/core/task.cpp',
    'lib/core/view.cpp',
    'lib/core/box.cpp',
    'lib/core/bind.cpp',

    'lib/platforms/glfw/glfw_platform.cpp',
    'lib/platforms/glfw/glfw_video.cpp',
    'lib/platforms/glfw/glfw_input.cpp',
    'lib/platforms/glfw/glfw_font.cpp',

    'lib/platforms/switch/swkbd.cpp',

    'lib/views/scrolling_frame.cpp',
    'lib/views/applet_frame.cpp',
    'lib/views/tab_frame.cpp',
    'lib/views/rectangle.cpp',
    'lib/views/sidebar.cpp',
    'lib/views/label.cpp',
    'lib/views/button.cpp',
    'lib/views/image.cpp',
    'lib/views/header.cpp',

    'extern/glad/glad.c',
    'extern/nanovg-gl/nanovg.c',
    'extern/tinyxml2/tinyxml2.cpp',

    'extern/fmt/src/format.cc',
    'extern/fmt/src/os.cc',

    'extern/libretro-common/compat/compat_strl.c',
    'extern/libretro-common/features/features_cpu.c',
    'extern/libretro-common/encodings/encoding_utf.c',

    'extern/yoga/src/yoga/event/event.cpp',
    'extern/yoga/src/yoga/log.cpp',
    'extern/yoga/src/yoga/Utils.cpp',
    'extern/yoga/src/yoga/YGConfig.cpp',
    'extern/yoga/src/yoga/YGEnums.cpp',
    'extern/yoga/src/yoga/YGLayout.cpp',
    'extern/yoga/src/yoga/YGNode.cpp',
    'extern/yoga/src/yoga/YGStyle.cpp',
    'extern/yoga/src/yoga/YGValue.cpp',
    'extern/yoga/src/yoga/Yoga.cpp',
)

borealis_include = include_directories(
    'include',
    'extern/fmt/include',
    'extern',
    'extern/tinyxml2',
    'extern/nanovg-gl',
    'extern/yoga/src',
    'extern/tweeny/include',
)

borealis_dependencies = [ dep_glfw3, dep_glm, ]
borealis_cpp_args = [ '-DYG_ENABLE_EVENTS', '-D__GLFW__', ]
