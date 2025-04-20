#CPMAddPackage(
#    NAME pcg_random
#    VERSION 2022.4.9
#    GITHUB_REPOSITORY imneme/pcg-cpp
#    GIT_TAG 428802d1a5634f96bcd0705fab379ff0113bcf13
#    DOWNLOAD_ONLY ON
#)
CPMAddPackage(
    NAME pcg_random
    VERSION 2025.4.18
    GITHUB_REPOSITORY Legacy-LuaSTG-Engine/pcg-cpp
    GIT_TAG c4c6fae22e8edd9558f785af8d8b520d726787df
    DOWNLOAD_ONLY ON
)

if (NOT pcg_random_ADDED)
    message(FATAL_ERROR "pcg_random is required")
endif ()

add_library(pcg_random INTERFACE)
target_include_directories(pcg_random INTERFACE ${pcg_random_SOURCE_DIR}/include)

add_executable(03-pcg-random main.cpp)
target_link_libraries(03-pcg-random PRIVATE pcg_random)
