########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(openssl_COMPONENT_NAMES "")
if(DEFINED openssl_FIND_DEPENDENCY_NAMES)
  list(APPEND openssl_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES openssl_FIND_DEPENDENCY_NAMES)
else()
  set(openssl_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(openssl_PACKAGE_FOLDER_RELEASE "/Users/chaitanyag/.conan2/p/opens27a449631afeb/p")
set(openssl_BUILD_MODULES_PATHS_RELEASE )


set(openssl_INCLUDE_DIRS_RELEASE )
set(openssl_RES_DIRS_RELEASE )
set(openssl_DEFINITIONS_RELEASE )
set(openssl_SHARED_LINK_FLAGS_RELEASE )
set(openssl_EXE_LINK_FLAGS_RELEASE )
set(openssl_OBJECTS_RELEASE )
set(openssl_COMPILE_DEFINITIONS_RELEASE )
set(openssl_COMPILE_OPTIONS_C_RELEASE )
set(openssl_COMPILE_OPTIONS_CXX_RELEASE )
set(openssl_LIB_DIRS_RELEASE "${openssl_PACKAGE_FOLDER_RELEASE}/lib")
set(openssl_BIN_DIRS_RELEASE )
set(openssl_LIBRARY_TYPE_RELEASE UNKNOWN)
set(openssl_IS_HOST_WINDOWS_RELEASE 0)
set(openssl_LIBS_RELEASE )
set(openssl_SYSTEM_LIBS_RELEASE )
set(openssl_FRAMEWORK_DIRS_RELEASE )
set(openssl_FRAMEWORKS_RELEASE )
set(openssl_BUILD_DIRS_RELEASE )
set(openssl_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(openssl_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${openssl_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${openssl_COMPILE_OPTIONS_C_RELEASE}>")
set(openssl_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${openssl_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${openssl_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${openssl_EXE_LINK_FLAGS_RELEASE}>")


set(openssl_COMPONENTS_RELEASE )