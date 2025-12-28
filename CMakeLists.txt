cmake_minimum_required(VERSION 3.16)
project(unac C)


list(APPEND library_source
    unac.c
   )


add_library(${PROJECT_NAME} SHARED ${library_source})
add_library(static_${PROJECT_NAME} STATIC ${library_source})


#target_precompile_headers(${PROJECT_NAME} PRIVATE framework.h)
#target_precompile_headers(static_${PROJECT_NAME} PRIVATE framework.h)



target_compile_definitions(${PROJECT_NAME} PRIVATE HAVE_CONFIG_H)
target_compile_definitions(static_${PROJECT_NAME} PRIVATE HAVE_CONFIG_H)


if(${WIN32})
    list(APPEND library_references
    iconv)
    message(STATUS "unac MSVC")
    target_compile_options(${PROJECT_NAME} PRIVATE "/MD$<$<CONFIG:Debug>:d>")
    target_link_options(${PROJECT_NAME} PRIVATE "/DEFAULTLIB:msvcrt$<$<CONFIG:Debug>:d>")
    target_link_options(${PROJECT_NAME} PRIVATE "/SUBSYSTEM:WINDOWS")
    target_link_options(${PROJECT_NAME} PRIVATE "/DEF:${CMAKE_CURRENT_SOURCE_DIR}/${PROJECT_NAME}.def")
    target_link_options(${PROJECT_NAME} PRIVATE "/IMPLIB:${LIBRARY_OUTPUT_PATH}/${PROJECT_NAME}.lib")
    target_link_libraries(${PROJECT_NAME} PRIVATE ${library_references} ${global_library_references})

elseif (${LINUX} OR ${__BSD__} OR ${ANDROID})



    #target_compile_options(${PROJECT_NAME} PRIVATE $<$<COMPILE_LANGUAGE:CXX>:-fpermissive  ${EXTRA_CXX_TARGET_COMPILER_OPTIONS}>)
    #target_compile_options(static_${PROJECT_NAME} PRIVATE $<$<COMPILE_LANGUAGE:CXX>:-fpermissive  ${EXTRA_CXX_TARGET_COMPILER_OPTIONS}>)
    target_compile_definitions(static_${PROJECT_NAME} PRIVATE CUBE)

    #if(${SUSE} OR ${OPENBSD})
    if(${OPENBSD} OR ${NETBSD} OR ${ANDROID})

        target_link_libraries(${PROJECT_NAME} PRIVATE iconv ${library_references} ${global_library_references})
        target_link_libraries(static_${PROJECT_NAME} PRIVATE ${static_library_references})

    else()


#        pkg_check_modules(${PROJECT_NAME}_PKGCONFIG iconv)
#        target_compile_options(${PROJECT_NAME} PRIVATE ${${PROJECT_NAME}_PKGCONFIG_CFLAGS})
#        target_compile_options(static_${PROJECT_NAME} PRIVATE ${${PROJECT_NAME}_PKGCONFIG_CFLAGS})
#        target_link_options(${PROJECT_NAME} PRIVATE ${${PROJECT_NAME}_PKGCONFIG_LDFLAGS})
#        target_link_libraries(${PROJECT_NAME} PRIVATE ${library_references} ${global_library_references} ${${PROJECT_NAME}_PKGCONFIG_LIBRARIES})
#        target_link_libraries(static_${PROJECT_NAME} PRIVATE ${static_library_references} ${${PROJECT_NAME}_PKGCONFIG_LIBRARIES})


        target_link_libraries(${PROJECT_NAME} PRIVATE ${library_references} ${global_library_references})
        target_link_libraries(static_${PROJECT_NAME} PRIVATE ${static_library_references})


    endif()

    target_link_options(${PROJECT_NAME} PRIVATE -Wl,-z,defs)
    # target_link_options(static_${PROJECT_NAME} PRIVATE --whole-archive)


endif()


list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/../..)
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/..)
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR})
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/../../../operating_system/operating_system-${PLATFORM_NAME}/configuration/${PROJECT_NAME})



target_include_directories(${PROJECT_NAME} PRIVATE ${library_include_directories})
target_include_directories(static_${PROJECT_NAME} PRIVATE ${library_include_directories})


target_compile_definitions(${PROJECT_NAME} PRIVATE _${PROJECT_NAME}_project)



