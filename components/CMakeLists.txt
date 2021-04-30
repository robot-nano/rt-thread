#set(COMPONENTS_SRCS "")
#
#include_directories(
#	dfs/include
#)
#
#
## cplusplus
#file(GLOB CPLUSPLUS_SRCS cplusplus/*.c cplusplus/*.cpp)
#
#
## dfs
#set(DFS_SRCS
#	dfs/src/dfs.c
#	dfs/src/dfs_file.c
#	dfs/src/dfs_fs.c
#	dfs/src/dfs_posix.c)
#if (RT_USING_POSIX)
#	list(APPEND COMPONENTS_SRCS dfs/src/poll.c dfs/src/select.c)
#endif ()
#
#if (RT_USING_DFS)
#	include_directories(dfs/filesystems/devfs
#		dfs/filesystems/elmfat
#		dfs/filesystems/nfs
#		dfs/filesystems/ramfs
#		dfs/filesystems/romfs)
#	file(GLOB FILESYSTEMS_SRCS
#		dfs/filesystems/devfs/*.c
#		dfs/filesystems/ramfs/*.c
#		dfs/filesystems/romfs/*.c)
#	list(APPEND DFS_SRCS ${FILESYSTEMS_SRCS})
#	list(REMOVE_ITEM DFS_SRCS dfs/filesystems/nfs/rpc/auth_none.c)
#	if (DFS_ROMFS_ROOT)
#		list(REMOVE_ITEM DFS_SRCS dfs/filesystems/romfs/romfs.c)
#	endif ()
#endif ()

set(COMPONENT SRCS)
include(AddRTThread)

file(GLOB COMPONENT_SRCS)
add_executable(cplusplus )

message(STATUS ${COMMENT_SRCS})