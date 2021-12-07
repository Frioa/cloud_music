cmake_minimum_required(VERSION 3.10.2)

aux_source_directory(. SOURCE)

add_library( # Sets the name of the library.
             media

             # Sets the library as a shared library.
             SHARED

             # Provides a relative path to your source file(s).
             ${SOURCE} )

# 设置一个变量
set(libs ${CMAKE_SOURCE_DIR}/${CMAKE_ANDROID_ARCH_ABI})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -L${libs}")

include_directories(include)

target_link_libraries( # Specifies the target library.
                       media

                        OpenSLES log
                       # Links the target library to the log library
                       # included in the NDK.
                      )
