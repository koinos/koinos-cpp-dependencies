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

include("cmake/HunterGate.cmake")

HunterGate(
   URL "https://github.com/cpp-pm/hunter/archive/v0.23.289.tar.gz"
   SHA1 "7d7323704780200a1575fc089d26f8a8a393a1fa"
   LOCAL
)

project(koinos-cpp-dependencies)

hunter_add_package(Boost COMPONENTS system log thread date_time filesystem chrono locale test program_options exception)
hunter_add_package(libsecp256k1)
hunter_add_package(nlohmann_json)
hunter_add_package(OpenSSL)
hunter_add_package(rabbitmq-c)
hunter_add_package(rocksdb)
hunter_add_package(yaml-cpp)
