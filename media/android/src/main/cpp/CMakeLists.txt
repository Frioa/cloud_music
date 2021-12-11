cmake_minimum_required(VERSION 3.4.1)

include_directories("${CMAKE_SOURCE_DIR}/include")
aux_source_directory(. SOURCE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -L${CMAKE_SOURCE_DIR}/../../../libs/${ANDROID_ABI}")
add_library( # Sets the name of the library.
        media-lib
        # Sets the library as a shared library.
        SHARED
        # Provides a relative path to your source file(s).
        ${SOURCE})


target_link_libraries( # Specifies the target library.
        media-lib
        avfilter avformat avcodec avutil swscale swresample
        z
        log
        )
