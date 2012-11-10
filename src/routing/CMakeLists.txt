#
#  This file is part of the Anonrt, the anonymizing proxy
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

project (anonrouting)
cmake_minimum_required (VERSION 2.8)

find_package (Boost REQUIRED)
find_package (GoogleTest REQUIRED)
find_package (GoogleMock REQUIRED)
find_package (Nacl REQUIRED)
find_package (Threads REQUIRED)

include_directories (${Boost_INCLUDE_DIRS})
link_directories (${Boost_LIBRARY_DIRS})

include_directories (${Nacl_INCLUDE_DIRS})
link_directories (${Nacl_LIBRARY_DIRS})

include_directories (${GoogleTest_INCLUDE_DIRS})
link_directories (${GoogleTest_LIBRARY_DIRS})

include_directories (${GoogleMock_INCLUDE_DIRS})
link_directories (${GoogleMock_LIBRARY_DIRS})

set (project_BIN ${PROJECT_NAME})

set (project_SOURCES
    placeholder.cc
)

add_library (${project_BIN} ${project_SOURCES})

target_link_libraries (${project_BIN}
    ${Boost_LIBRARIES}
    ${Nacl_LIBRARIES}
    ${CMAKE_THREAD_LIBS_INIT}
)

enable_testing ()
add_subdirectory (test)
