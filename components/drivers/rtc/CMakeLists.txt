include_directories(${CMAKE_CURRENT_SOURCE_DIR})

## driver rtc
if (RT_USING_RTC)
	list(APPEND DRIVER_SRCS rtc/rtc.c)
	if (RT_USING_ALARM)
		list(APPEND DRIVER_SRCS rtc/alarm.c)
		if (RT_USING_SOFT_RTC)
			list(APPEND DRIVER_SRCS rtc/soft_rtc.c)
		endif ()
	endif ()
endif ()