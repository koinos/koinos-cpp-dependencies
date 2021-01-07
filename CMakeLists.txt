cmake_minimum_required(VERSION 3.10.2)

option(HUNTER_RUN_UPLOAD "Upload cache binaries" ON)

set(
   HUNTER_CACHE_SERVERS
   "https://github.com/koinos/hunter-cache"
   CACHE
   STRING
   "Default cache server"
)

set(
   HUNTER_PASSWORDS_PATH
   "${CMAKE_CURRENT_LIST_DIR}/cmake/Hunter/passwords.cmake"
   CACHE
   FILEPATH
   "Hunter passwords"
)

set(HUNTER_DISABLE_BUILDS YES)

option(HUNTER_STATUS_DEBUG "Print a lot of info" ON)

include("cmake/HunterGate.cmake")

HunterGate(
   URL "https://github.com/koinos/hunter/archive/rocksdb.tar.gz"
   SHA1 "b5dc3af780ba255ee6103bfc306403738735f420"
   LOCAL
)

project(koinos-cpp-dependencies)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

hunter_add_package(rocksdb)
hunter_add_package(Boost COMPONENTS system log thread date_time filesystem chrono locale test program_options)
hunter_add_package(nlohmann_json)
hunter_add_package(OpenSSL)
