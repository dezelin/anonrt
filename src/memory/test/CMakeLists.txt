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

cmake_minimum_required (VERSION 2.8)

file (GLOB TEST_SOURCES RELATIVE ${PROJECT_SOURCE_DIR}/test "test_*.cc")
foreach (TEST_SOURCE ${TEST_SOURCES})
    string (REGEX REPLACE ".cc" "" TEST_BIN ${TEST_SOURCE})
    add_executable (${TEST_BIN} ${TEST_SOURCE})
    target_link_libraries (${TEST_BIN}
        ${project_BIN}
        ${GoogleTest_LIBRARIES}
        ${CMAKE_THREAD_LIBS_INIT}
    )
    add_test (${TEST_BIN} ${TEST_BIN} ${TEST_SOURCE})
endforeach ()

file (GLOB MOCK_SOURCES RELATIVE ${PROJECT_SOURCE_DIR}/test "mock_*.cc")
foreach (MOCK_SOURCE ${MOCK_SOURCES})
    string (REGEX REPLACE ".cc" "" MOCK_BIN ${MOCK_SOURCE})
    add_executable (${MOCK_BIN} ${MOCK_SOURCE})
    target_link_libraries (${MOCK_BIN}
        ${project_BIN}
        ${GoogleMock_LIBRARIES}
        ${GoogleTest_LIBRARIES}
        ${CMAKE_THREAD_LIBS_INIT}
    )
    add_test (${MOCK_BIN} ${MOCK_BIN} ${MOCK_SOURCE})
endforeach ()
