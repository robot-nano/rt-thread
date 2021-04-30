include_directories(${CMAKE_CURRENT_SOURCE_DIR})

list(APPEND DRIVER_SRCS sensor.c)

## driver sensors
if (RT_USING_SENSOR_CMD)
	list(APPEND DRIVER_SRCS sensors/sensor_cmd.c)
endif ()