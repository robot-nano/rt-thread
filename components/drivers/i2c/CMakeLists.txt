include_directories(${CMAKE_CURRENT_SOURCE_DIR})
list(APPEND DRIVER_SRCS i2c_core.c i2c_dev.c)

## driver i2c
if (RT_USING_I2C_BITOPS)
	list(APPEND DRIVER_SRCS i2c/i2c-bit-ops.c)
endif ()