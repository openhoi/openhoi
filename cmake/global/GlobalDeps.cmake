if(NOT WIN32)
    set(THREADS_PREFER_PTHREAD_FLAG TRUE)
endif()
find_package(Threads REQUIRED)


set(Boost_USE_STATIC_LIBS OFF)
set(Boost_USE_STATIC_RUNTIME OFF)
set(Boost_USE_DEBUG_LIBS OFF)
set(Boost_USE_DEBUG_RUNTIME OFF)
set(Boost_USE_MULTITHREADED ON)
if(WIN32)
    set(Boost_ARCHITECTURE "-x64")
    set(BOOST_ROOT ${CMAKE_SOURCE_DIR}/thirdparty/manual-build/precompiled/boost)
endif()
find_package(Boost 1.65 REQUIRED COMPONENTS program_options locale)


if(NOT WIN32)
   set(OpenGL_GL_PREFERENCE GLVND)
endif()
set(OGRE_ROOT_DIR ${CMAKE_SOURCE_DIR}/thirdparty/manual-build/precompiled/ogre3d)
find_package(OGRE REQUIRED)
add_definitions(-DHAVE_OGRE_BITES)
if(NOT WIN32)
    find_package(Freetype REQUIRED)
    find_package(X11 REQUIRED)
    list(APPEND OGRE_LIBRARIES ${X11_LIBRARIES} Xt Xaw Freetype::Freetype)
endif()


if(NOT WIN32)
    set(FILESYSTEM_LIB stdc++fs)
endif()
