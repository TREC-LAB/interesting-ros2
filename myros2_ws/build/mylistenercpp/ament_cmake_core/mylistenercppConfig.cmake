# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_mylistenercpp_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED mylistenercpp_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(mylistenercpp_FOUND FALSE)
  elseif(NOT mylistenercpp_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(mylistenercpp_FOUND FALSE)
  endif()
  return()
endif()
set(_mylistenercpp_CONFIG_INCLUDED TRUE)

# output package information
if(NOT mylistenercpp_FIND_QUIETLY)
  message(STATUS "Found mylistenercpp: 0.0.0 (${mylistenercpp_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'mylistenercpp' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message(WARNING "${_msg}")
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(mylistenercpp_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${mylistenercpp_DIR}/${_extra}")
endforeach()
