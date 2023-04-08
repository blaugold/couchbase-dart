cmake_minimum_required(VERSION 3.17)
cmake_policy(SET CMP0042 NEW)
cmake_policy(SET CMP0048 NEW)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Set up some build requirements for Windows.
set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
if(WIN32)
  add_definitions(/bigobj)
  add_definitions(-D_WIN32_WINNT=0x0601)
endif()

set(OPENSSL_ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}/build/vendor/openssl/install")
set(COUCHBASE_CXX_CLIENT_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(COUCHBASE_CXX_CLIENT_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(COUCHBASE_CXX_CLIENT_BUILD_TOOLS OFF CACHE BOOL "" FORCE)
set(COUCHBASE_CXX_CLIENT_STATIC_STDLIB ON CACHE BOOL "" FORCE)
set(COUCHBASE_CXX_CLIENT_STATIC_OPENSSL ON CACHE BOOL "" FORCE)
add_subdirectory(vendor/couchbase-cxx-client)

include(vendor/couchbase-cxx-client/cmake/Cache.cmake)

project(CouchbaseDart)

file(GLOB SOURCE_FILES "src/*.cpp")
add_library(${PROJECT_NAME} SHARED
  ${SOURCE_FILES}
  "vendor/dart/include/dart_api_dl.c"
)

target_include_directories(${PROJECT_NAME}
  PUBLIC  "include"
  PRIVATE "src"
          "vendor/dart/include"
          "vendor/couchbase-cxx-client"
          "vendor/couchbase-cxx-client/third_party/asio/asio/include")

target_link_libraries(${PROJECT_NAME}
  couchbase_cxx_client
)
