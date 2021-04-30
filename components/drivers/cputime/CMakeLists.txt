include_directories(${CMAKE_CURRENT_SOURCE_DIR})
list(APPEND DRIVER_SRCS cputime.c)
## driver cputime
if (RT_USING_CPUTIME_CORTEXM)
	list(APPEND DRIVERS_SRCS cputime_cortexm.c)
endif ()