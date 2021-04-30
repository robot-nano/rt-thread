file(GLOB COMMENT_SRCS)

function(add_rt_thread_component name)
    cmake_parse_arguments(ARG
        ""
        ""
        ""
        ${ARGN})
    string(REGEX REPLACE "^COMPONENT_" "" component_name ${name})
    list(APPEND target_list ${ARGN})
    list(APPEND COMMENT_SRCS ${ARGN})
#    MESSAGE(WARNING ${COMMENT_SRCS})
endfunction()