cmake_minimum_required(VERSION 3.10.2)

include("cmake/HunterGate.cmake")

option(HUNTER_RUN_UPLOAD "Upload cache binaries" ON)

HunterGate(
   URL "https://github.com/koinos/hunter/archive/rocksdb.tar.gz"
   SHA1 "b5dc3af780ba255ee6103bfc306403738735f420"
   LOCAL
)

set(
    HUNTER_PASSWORDS_PATH
    "${CMAKE_CURRENT_LIST_DIR}/cmake/Hunter/passwords.cmake"
    CACHE
    FILEPATH
    "Hunter passwords"
)

project(koinos-cpp-dependencies)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

hunter_add_package(rocksdb)
hunter_add_package(Boost COMPONENTS system log thread date_time filesystem chrono locale test program_options)
hunter_add_package(nlohmann_json)
hunter_add_package(OpenSSL)
