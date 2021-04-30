include_directories(${CMAKE_CURRENT_SOURCE_DIR})

set(SRCS core/usbdevice_core.c core/usbdevice.c)

if (RT_USB_DEVICE_CDC)
	list(APPEND SRCS class/cdc_vcom.c)
endif ()

if (RT_USB_DEVICE_HID)
	list(APPEND SRCS class/hid.c)
endif ()

if (RT_USB_DEVICE_MSTORAGE)
	list(APPEND SRCS class/mstorage.c)
endif ()

if (RT_USB_DEVICE_ECM)
	list(APPEND SRCS class/ecm.c)
endif ()

if (RT_USB_DEVICE_RNDIS)
	list(APPEND SRCS class/rndis.c)
endif ()

if (RT_USB_DEVICE_WINUSB)
	list(APPEND SRCS class/winusb.c)
endif ()

if (RT_USB_DEVICE_AUDIO_MIC)
	list(APPEND SRCS class/audio_mic.c)
endif ()

if (RT_USB_DEVICE_AUDIO_SPEAKER)
	list(APPEND SRCS class/audio_speaker.c)
endif ()

list(APPEND DRIVER_SRCS ${SRCS})