include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}/class
	${CMAKE_CURRENT_SOURCE_DIR}/core
)

set(SRCS
	core/usbhost_core.c
	core/driver.c
	core/usbhost.c
	core/hub.c
	)

if (RT_USBH_ADK)
	list(APPEND SRCS class/adk.c class/adkapp.c)
endif ()

if (RT_USBH_MSTORAGE)
	list(APPEND SRCS class/mass.c class/udisk.c)
endif ()

if (RT_USBH_HID)
	list(APPEND SRCS class/hid.c)
endif ()

if (RT_USBH_HID_MOUSE)
	list(APPEND SRCS class/umouse.c)
endif ()

if (RT_USBH_HID_KEYBOARD)
	list(APPEND SRCS class/ukbd.c)
endif ()

list(APPEND DRIVER_SRCS ${SRCS})
