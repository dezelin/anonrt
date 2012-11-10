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

cmake_minimum_required(VERSION 2.8)

if (NOT GOOGLETEST_FOUND)

    find_path (GoogleTest_INCLUDE_DIRS
        NAMES
            gtest/gtest.h
        PATHS
            ${GOOGLETEST_PREFIX}/include
            /usr/include
            /usr/local/include
            /opt/local/include
        NO_DEFAULT_PATH
    )

    find_library (GoogleTest_LIBRARY
        NAMES
            gtest
        PATHS
            ${GOOGLETEST_PREFIX}/lib/
            /usr/local/lib64/
            /usr/local/lib/
            /usr/lib/i386-linux-gnu/
            /usr/lib/x86_64-linux-gnu/
            /usr/lib64/
            /usr/lib/
        NO_DEFAULT_PATH
    )

    find_library (GoogleTest_Main_LIBRARY
        NAMES
            gtest_main
        PATHS
            ${GOOGLETEST_PREFIX}/lib/
            /usr/local/lib64/
            /usr/local/lib/
            /usr/lib/i386-linux-gnu/
            /usr/lib/x86_64-linux-gnu/
            /usr/lib64/
            /usr/lib/
        NO_DEFAULT_PATH
    )

    if (GoogleTest_INCLUDE_DIRS AND GoogleTest_LIBRARY AND GoogleTest_Main_LIBRARY)
        set (GOOGLETEST_FOUND TRUE)
    endif()

    list(APPEND GoogleTest_LIBRARIES ${GoogleTest_LIBRARY})
    list(APPEND GoogleTest_LIBRARIES ${GoogleTest_Main_LIBRARY})

    if (GOOGLETEST_FOUND)
        message(STATUS "Found libgtest: ${GoogleTest_INCLUDE_DIRS}, ${GoogleTest_LIBRARIES}")
    else()
        message (FATAL_ERROR "Could not find libgtest, try to setup GOOGLETEST_PREFIX accordingly")
    endif()
endif()
