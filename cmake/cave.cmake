# Constant Definition
set(CAVE_BUILDSYSTEM_CMAKE    cmake)
set(CAVE_BUILDSYSTEM_ROSBUILD rosbuild)

# Initialize Build System
macro(cave_load_buildsystem _name)
    if (_name EQUAL CAVE_BUILDSYSTEM_ROSBUILD)
        # Load ROS Staff
        message(STATUS "[Cave] Using rosbuild")
        include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
    elseif(_name EQUAL CAVE_BUILDSYSTEM_cmake)
        # well, nothing to do...
        message(STATUS "[Cave] Using Original CMake")
    endif ()
endmacro(cave_load_buildsystem)
