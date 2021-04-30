cmake_minimum_required(VERSION 3.0)
project(rt-thread)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D__RTTHREAD__")

#if (BSP)
#    set(BSP_DIR bsp/${BSP})
#    add_subdirectory(${BSP_DIR})
#else ()
#
#endif ()
#
#include_directories(include)
#
#add_subdirectory(components)
#
#file(GLOB SRC_SOURCES src/*.c)
#if (NOT RT_USING_HEAP OR NOT RT_USING_SMALL_MEM)
#    list(REMOVE_ITEM ${SRC_SOURCES} src/mem.c)
#endif ()
#
#if (NOT RT_USING_HEAP OR NOT RT_USING_SLAB)
#    list(REMOVE_ITEM ${SRC_SOURCES} src/slab.c)
#endif ()
#
#if (NOT RT_USING_MEMPOOL)
#    list(REMOVE_ITEM ${SRC_SOURCES} src/mempool.c)
#endif ()
#
#if (NOT RT_USING_MEMHEAP)
#    list(REMOVE_ITEM ${SRC_SOURCES} src/memheap.c)
#    if (RT_USING_MEMHEAP_AS_HEAP)
#        list(REMOVE_ITEM ${SRC_SOURCES} src/mem.c)
#    endif ()
#endif ()
#
#if (RT_USING_USERHEAP)
#    list(REMOVE_ITEM ${SRC_SOURCES} src/mem.c src/slab.c)
#endif ()
#
#if (NOT RT_USING_SIGNALS)
#    list(REMOVE_ITEM ${SRC_SOURCES} src/signal.c)
#endif ()
#
#if (NOT RT_USING_DEVICE)
#    list(REMOVE_ITEM ${SRC_SOURCES} src/device.c)
#endif ()
#
#if (NOT RT_USING_SMP)
#    list(REMOVE_ITEM ${SRC_SOURCES} src/cpu.c)
#endif ()

set(CMAKE_MODULE_PATH
    ${CMAKE_MODULE_PATH}
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake"
    )


add_subdirectory(components)

