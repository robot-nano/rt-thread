# drivers
include_directories(include)

file(GLOB driver_dirs ${CMAKE_CURRENT_SOURCE_DIR}/*)

foreach (driver_dir IN ITEMS ${driver_dirs})
	if (EXISTS "${driver_dir}/CMakeLists.txt")
		include(${driver_dir}/CMakeLists.txt)
	endif ()
endforeach ()