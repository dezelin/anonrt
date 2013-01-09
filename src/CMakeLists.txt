#
#  This file is part of Anonrt, the anonymizing proxy
#  Copyright (C) 2012  Aleksandar Dezelin <dezelin@gmail.com>
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

project (anonrt)
cmake_minimum_required (VERSION 2.8)

set (APPLICATION_NAME "Anonrt")
set (APPLICATION_CODENAME "${PROJECT_NAME}")
set (APPLICATION_COPYRIGHT_YEARS "2012")
set (APPLICATION_VERSION_MAJOR 0)
set (APPLICATION_VERSION_MINOR 0)
set (APPLICATION_VERSION_PATCH 1)
set (APPLICATION_VERSION_TYPE SNAPSHOT)
set (APPLICATION_VERSION_STRING
    "${APPLICATION_VERSION_MAJOR}.
     ${APPLICATION_VERSION_MINOR}.
     ${APPLICATION_VERSION_PATCH}-
     ${APPLICATION_VERSION_TYPE}"
)

add_subdirectory (crypto)
add_subdirectory (io)
add_subdirectory (memory)
add_subdirectory (misc)
add_subdirectory (net)
add_subdirectory (proxy)
add_subdirectory (routing)

find_package (Boost REQUIRED)
find_package (GoogleTest REQUIRED)
find_package (GoogleMock REQUIRED)
find_package (Nacl REQUIRED)
find_package (Threads REQUIRED)

include_directories (${Boost_INCLUDE_DIRS})
link_directories (${Boost_LIBRARY_DIRS})

include_directories (${GoogleTest_INCLUDE_DIRS})
link_directories (${GoogleTest_LIBRARY_DIRS})

include_directories (${GoogleMock_INCLUDE_DIRS})
link_directories (${GoogleMock_LIBRARY_DIRS})

set (project_BIN ${PROJECT_NAME})

set (project_SOURCES
    placeholder.cc
)

add_executable (${project_BIN} ${project_SOURCES})

target_link_libraries (${project_BIN}
    anoncrypto
    anonio
    anonmemory
    anonmisc
    anonnet
    anonproxy
    anonrouting
    ${Boost_LIBRARIES}
    ${Nacl_LIBRARIES}
)

install (TARGETS ${project_BIN} DESTINATION bin)

enable_testing ()
add_subdirectory (test)
