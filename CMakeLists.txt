
cmake_minimum_required(VERSION 3.19.0)

cmake_policy(SET CMP0074 NEW)
cmake_policy(SET CMP0114 NEW)

if(${CMAKE_VERSION} VERSION_GREATER_EQUAL 3.24.0)
  cmake_policy(SET CMP0135 NEW)
endif()

if(${CMAKE_VERSION} VERSION_GREATER_EQUAL 3.27.0)
  cmake_policy(SET CMP0144 NEW)
endif()

option(HUNTER_RUN_UPLOAD "Upload cache binaries" ON)

include(FetchContent)
FetchContent_Declare(
  koinos_cmake
  GIT_REPOSITORY https://github.com/koinos/koinos-cmake.git
  GIT_TAG        4967f0548e3f4f555ac95494413f30ac9d0ced4d
)
FetchContent_MakeAvailable(koinos_cmake)

include("${koinos_cmake_SOURCE_DIR}/Koinos.cmake")

project(koinos-cpp-dependencies)

hunter_add_package(Boost COMPONENTS system log thread date_time filesystem chrono locale test program_options exception)
hunter_add_package(ethash)
hunter_add_package(libsecp256k1)
hunter_add_package(nlohmann_json)
hunter_add_package(OpenSSL)
hunter_add_package(Protobuf)
hunter_add_package(rabbitmq-c)
hunter_add_package(rocksdb)
hunter_add_package(yaml-cpp)
hunter_add_package(fizzy)
hunter_add_package(gRPC)
hunter_add_package(abseil)
hunter_add_package(re2)
hunter_add_package(c-ares)
hunter_add_package(ZLIB)
