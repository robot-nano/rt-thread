include_directories(${CMAKE_CURRENT_SOURCE_DIR})

## driver mtd
if (RT_USING_MTD_NOR)
	list(APPEND DRIVER_SRCS mtd/mtd_nor.c)
endif ()
if (RT_USING_MTD_NAND)
	list(APPEND DRIVER_SRCS mtd/mtd_nand.c)
endif ()