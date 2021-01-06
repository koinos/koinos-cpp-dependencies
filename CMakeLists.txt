cmake_minimum_required(VERSION 3.10.2)

include("cmake/HunterGate.cmake")

option(HUNTER_RUN_UPLOAD "Upload cache binaries" OFF)

HunterGate(
   URL "https://github.com/cpp-pm/hunter/archive/v0.23.287.tar.gz"
   SHA1 "69371a638d697bbf09f4f08dd0aad996efcc79d9"
   LOCAL
)

set(
    HUNTER_PASSWORDS_PATH
    "${CMAKE_CURRENT_LIST_DIR}/cmake/Hunter/passwords.cmake"
    CACHE
    FILEPATH
    "Hunter passwords"
)

project(koinos)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

hunter_add_package(rocksdb)
hunter_add_package(Boost COMPONENTS system log thread date_time filesystem chrono locale test program_options)
hunter_add_package(nlohmann_json)
hunter_add_package(OpenSSL)
