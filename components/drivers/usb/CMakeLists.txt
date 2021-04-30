file(GLOB usb_dirs *)

foreach (usb_dir IN ITEMS ${usb_dirs})
	if (EXISTS "${usb_dir}/CMakeLists.txt")
		message(WARNING ${usb_dir})
#		include(${usb_dir}/CMakeLists.txt)
	endif ()
endforeach ()

message(WARNING ${DIRVER_SRCS})