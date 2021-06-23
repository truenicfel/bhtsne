project(TSNE)

set(EXECUTABLE_NAME TSNE)

SET(CMAKE_CXX_FLAGS "-O2")
SET(CMAKE_C_FLAGS "-O2")

set(SOURCES
	source/tsne_main.cpp
	source/sptree.cpp
	source/tsne.cpp
)

add_executable(${EXECUTABLE_NAME} ${SOURCES})
