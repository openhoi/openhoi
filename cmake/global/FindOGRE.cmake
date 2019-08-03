#
# Find OGRE
#
# Try to find OGRE libraries.
# This module defines the following variables:
# - OGRE_INCLUDE_DIRS
# - OGRE_LIBRARIES
# - OGRE_FOUND
#
# The following variables can be set as arguments for the module.
# - OGRE_ROOT_DIR : Root library directory of OGRE

# Additional modules
include(FindPackageHandleStandardArgs)

# Find include files
find_path(
    OGRE_INCLUDE_DIR
    NAMES Ogre.h
    PATHS
    $ENV{PROGRAMFILES}/include
    ${OGRE_ROOT_DIR}/include
    /usr/include
    /usr/local/include
    /sw/include
    /opt/local/include
    PATH_SUFFIXES OGRE
    DOC "The directory where Ogre.h resides")


if(EXISTS ${OGRE_ROOT_DIR}/lib/libOgreGLSupport.a)
    set(NON_PREFIX_SUFFIX .so.1.12.1)
    set(CMAKE_FIND_LIBRARY_SUFFIXES_BAK ${CMAKE_FIND_LIBRARY_SUFFIXES})
    list(APPEND CMAKE_FIND_LIBRARY_SUFFIXES ${NON_PREFIX_SUFFIX})
endif()

# Find library files
find_library(
    OGRE_MAIN_LIBRARY
    NAMES OgreMain
    PATHS
    $ENV{PROGRAMFILES}/lib
    ${OGRE_ROOT_DIR}/lib/macosx/Release
    ${OGRE_ROOT_DIR}/lib
    /usr/lib64
    /usr/lib
    /usr/local/lib64
    /usr/local/lib
    /sw/lib
    /opt/local/lib
    PATH_SUFFIXES .so.1.12.1
    DOC "The OGRE OgreMain library")

find_library(
    OGRE_HLMS_LIBRARY
    NAMES OgreHLMS
    PATHS
    $ENV{PROGRAMFILES}/lib
    ${OGRE_ROOT_DIR}/lib/macosx/Release
    ${OGRE_ROOT_DIR}/lib
    /usr/lib64
    /usr/lib
    /usr/local/lib64
    /usr/local/lib
    /sw/lib
    /opt/local/lib
    DOC "The OGRE OgreHLMS library")

find_library(
    OGRE_BITES_LIBRARY
    NAMES OgreBites
    PATHS
    $ENV{PROGRAMFILES}/lib
    ${OGRE_ROOT_DIR}/lib/macosx/Release
    ${OGRE_ROOT_DIR}/lib
    /usr/lib64
    /usr/lib
    /usr/local/lib64
    /usr/local/lib
    /sw/lib
    /opt/local/lib
    DOC "The OGRE OgreBites library")

find_library(
    OGRE_CODECSTBI_LIBRARY
    NAMES Codec_STBI${NON_PREFIX_SUFFIX}
    PATHS
    $ENV{PROGRAMFILES}/lib
    ${OGRE_ROOT_DIR}/lib/macosx/Release
    ${OGRE_ROOT_DIR}/lib
    ${OGRE_ROOT_DIR}/lib/OGRE
    ${OGRE_ROOT_DIR}/lib/OGRE-openhoi
    /usr/lib64
    /usr/lib
    /usr/local/lib64
    /usr/local/lib
    /sw/lib
    /opt/local/lib
    DOC "The OGRE Codec_STBI library")

find_library(
    OGRE_MESHLODGENERATOR_LIBRARY
    NAMES OgreMeshLodGenerator
    PATHS
    $ENV{PROGRAMFILES}/lib
    ${OGRE_ROOT_DIR}/lib/macosx/Release
    ${OGRE_ROOT_DIR}/lib
    /usr/lib64
    /usr/lib
    /usr/local/lib64
    /usr/local/lib
    /sw/lib
    /opt/local/lib
    DOC "The OGRE OgreMeshLodGenerator library")

find_library(
    OGRE_OVERLAY_LIBRARY
    NAMES OgreOverlay
    PATHS
    $ENV{PROGRAMFILES}/lib
    ${OGRE_ROOT_DIR}/lib/macosx/Release
    ${OGRE_ROOT_DIR}/lib
    /usr/lib64
    /usr/lib
    /usr/local/lib64
    /usr/local/lib
    /sw/lib
    /opt/local/lib
    DOC "The OGRE OgreOverlay library")

find_library(
    OGRE_PROPERTY_LIBRARY
    NAMES OgreProperty
    PATHS
    $ENV{PROGRAMFILES}/lib
    ${OGRE_ROOT_DIR}/lib/macosx/Release
    ${OGRE_ROOT_DIR}/lib
    /usr/lib64
    /usr/lib
    /usr/local/lib64
    /usr/local/lib
    /sw/lib
    /opt/local/lib
    DOC "The OGRE OgreProperty library")

find_library(
    OGRE_RTSHADERSYSTEM_LIBRARY
    NAMES OgreRTShaderSystem
    PATHS
    $ENV{PROGRAMFILES}/lib
    ${OGRE_ROOT_DIR}/lib/macosx/Release
    ${OGRE_ROOT_DIR}/lib
    /usr/lib64
    /usr/lib
    /usr/local/lib64
    /usr/local/lib
    /sw/lib
    /opt/local/lib
    DOC "The OGRE OgreRTShaderSystem library")

if (WIN32)
    find_library(
        OGRE_MAIN_LIBRARY_DEBUG
        NAMES OgreMain_d
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib
        DOC "The DEBUG OGRE OgreMain library")

    find_library(
        OGRE_HLMS_LIBRARY_DEBUG
        NAMES OgreHLMS_d
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib
        DOC "The DEBUG OGRE OgreHLMS library")

    find_library(
        OGRE_BITES_LIBRARY_DEBUG
        NAMES OgreBites_d
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib
        DOC "The DEBUG OGRE OgreBites library")

    find_library(
        OGRE_CODECSTBI_LIBRARY_DEBUG
        NAMES Codec_STBI_d
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib
        ${OGRE_ROOT_DIR}/lib/OGRE
        DOC "The DEBUG OGRE Codec_STBI library")

    find_library(
        OGRE_MESHLODGENERATOR_LIBRARY_DEBUG
        NAMES OgreMeshLodGenerator_d
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib
        DOC "The DEBUG OGRE OgreMeshLodGenerator library")

    find_library(
        OGRE_OVERLAY_LIBRARY_DEBUG
        NAMES OgreOverlay_d
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib
        DOC "The DEBUG OGRE OgreOverlay library")

    find_library(
        OGRE_PROPERTY_LIBRARY_DEBUG
        NAMES OgreProperty_d
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib
        DOC "The DEBUG OGRE OgreProperty library")

    find_library(
        OGRE_RTSHADERSYSTEM_LIBRARY_DEBUG
        NAMES OgreRTShaderSystem_d
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib
        DOC "The DEBUG OGRE OgreRTShaderSystem library")

    find_library(
        OGRE_RENDERSYSTEMD3D11_LIBRARY_DEBUG
        NAMES RenderSystem_Direct3D11_d
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib
        DOC "The DEBUG OGRE RenderSystem_Direct3D11 library")
        
    find_library(
        OGRE_RENDERSYSTEMD3D11_LIBRARY
        NAMES RenderSystem_Direct3D11
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib
        DOC "The OGRE RenderSystem_Direct3D11 library")
else()
    find_library(
        OGRE_GLSUPPORT_LIBRARY
        NAMES OgreGLSupport
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib/macosx/Release
        ${OGRE_ROOT_DIR}/lib
        /usr/lib64
        /usr/lib
        /usr/local/lib64
        /usr/local/lib
        /sw/lib
        /opt/local/lib
        DOC "The OGRE OgreGLSupport library")

    find_library(
        OGRE_RENDERSYSTEMGL3PLUS_LIBRARY
        NAMES RenderSystem_GL3Plus${NON_PREFIX_SUFFIX}
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib/macosx/Release
        ${OGRE_ROOT_DIR}/lib
        ${OGRE_ROOT_DIR}/lib/OGRE
        ${OGRE_ROOT_DIR}/lib/OGRE-openhoi
        /usr/lib64
        /usr/lib
        /usr/local/lib64
        /usr/local/lib
        /sw/lib
        /opt/local/lib
        DOC "The OGRE RenderSystem_GL3Plus library")

    find_library(
        OGRE_CODECFREEIMAGE_LIBRARY
        NAMES Codec_FreeImage${NON_PREFIX_SUFFIX}
        PATHS
        $ENV{PROGRAMFILES}/lib
        ${OGRE_ROOT_DIR}/lib/macosx/Release
        ${OGRE_ROOT_DIR}/lib
        ${OGRE_ROOT_DIR}/lib/OGRE
        ${OGRE_ROOT_DIR}/lib/OGRE-openhoi
        /usr/lib64
        /usr/lib
        /usr/local/lib64
        /usr/local/lib
        /sw/lib
        /opt/local/lib
        DOC "The OGRE Codec_FreeImage library")
endif()

# Handle REQUIRED argument, define *_FOUND variable
if (WIN32)
    find_package_handle_standard_args(OGRE DEFAULT_MSG OGRE_INCLUDE_DIR OGRE_MAIN_LIBRARY OGRE_HLMS_LIBRARY OGRE_BITES_LIBRARY OGRE_CODECSTBI_LIBRARY
                                      OGRE_MESHLODGENERATOR_LIBRARY OGRE_OVERLAY_LIBRARY OGRE_PROPERTY_LIBRARY OGRE_RTSHADERSYSTEM_LIBRARY OGRE_RENDERSYSTEMD3D11_LIBRARY)
else()
    find_package_handle_standard_args(OGRE DEFAULT_MSG OGRE_INCLUDE_DIR OGRE_MAIN_LIBRARY OGRE_HLMS_LIBRARY OGRE_GLSUPPORT_LIBRARY OGRE_BITES_LIBRARY OGRE_CODECSTBI_LIBRARY
                                      OGRE_MESHLODGENERATOR_LIBRARY OGRE_OVERLAY_LIBRARY OGRE_PROPERTY_LIBRARY OGRE_RTSHADERSYSTEM_LIBRARY OGRE_RENDERSYSTEMGL3PLUS_LIBRARY
                                      OGRE_CODECFREEIMAGE_LIBRARY)
endif()

# Define OGRE_LIBRARIES and OGRE_INCLUDE_DIRS
if (OGRE_FOUND)
    if(WIN32 AND OGRE_RENDERSYSTEMD3D11_LIBRARY_DEBUG)
        list(APPEND OGRE_LIBRARIES debug ${OGRE_MAIN_LIBRARY_DEBUG} optimized ${OGRE_MAIN_LIBRARY}
                                   debug ${OGRE_HLMS_LIBRARY_DEBUG} optimized ${OGRE_HLMS_LIBRARY} 
                                   debug ${OGRE_BITES_LIBRARY_DEBUG} optimized ${OGRE_BITES_LIBRARY}
                                   debug ${OGRE_CODECSTBI_LIBRARY_DEBUG} optimized ${OGRE_CODECSTBI_LIBRARY}
                                   debug ${OGRE_MESHLODGENERATOR_LIBRARY_DEBUG} optimized ${OGRE_MESHLODGENERATOR_LIBRARY}
                                   debug ${OGRE_OVERLAY_LIBRARY_DEBUG} optimized ${OGRE_OVERLAY_LIBRARY}
                                   debug ${OGRE_PROPERTY_LIBRARY_DEBUG} optimized ${OGRE_PROPERTY_LIBRARY}
                                   debug ${OGRE_RTSHADERSYSTEM_LIBRARY_DEBUG} optimized ${OGRE_RTSHADERSYSTEM_LIBRARY}
                                   debug ${OGRE_RENDERSYSTEMD3D11_LIBRARY_DEBUG} optimized ${OGRE_RENDERSYSTEMD3D11_LIBRARY})
    else()
        list(APPEND OGRE_LIBRARIES ${OGRE_MAIN_LIBRARY} ${OGRE_HLMS_LIBRARY} ${OGRE_BITES_LIBRARY} ${OGRE_CODECSTBI_LIBRARY} ${OGRE_MESHLODGENERATOR_LIBRARY}
                                   ${OGRE_OVERLAY_LIBRARY} ${OGRE_PROPERTY_LIBRARY} ${OGRE_RTSHADERSYSTEM_LIBRARY})
        if(WIN32)
            list(APPEND OGRE_LIBRARIES ${OGRE_RENDERSYSTEMD3D11_LIBRARY})
        else()
            list(APPEND OGRE_LIBRARIES ${OGRE_GLSUPPORT_LIBRARY} ${OGRE_RENDERSYSTEMGL3PLUS_LIBRARY} ${OGRE_CODECFREEIMAGE_LIBRARY})
        endif()
    endif()
    
    
	set(OGRE_INCLUDE_DIRS ${OGRE_INCLUDE_DIR} ${OGRE_INCLUDE_DIR}/Bites ${OGRE_INCLUDE_DIR}/HLMS ${OGRE_INCLUDE_DIR}/MeshLodGenerator ${OGRE_INCLUDE_DIR}/Overlay
                          ${OGRE_INCLUDE_DIR}/Property ${OGRE_INCLUDE_DIR}/RTShaderSystem ${OGRE_INCLUDE_DIR}/Threading)
    if(WIN32)
        list(APPEND OGRE_INCLUDE_DIRS ${OGRE_INCLUDE_DIR}/RenderSystems/Direct3D11)
    else()
        list(APPEND OGRE_INCLUDE_DIRS ${OGRE_INCLUDE_DIR}/RenderSystems/GL3Plus)
    endif()
endif()

# Hide some variables
mark_as_advanced(OGRE_INCLUDE_DIR OGRE_MAIN_LIBRARY OGRE_HLMS_LIBRARY OGRE_GLSUPPORT_LIBRARY OGRE_BITES_LIBRARY OGRE_CODECSTBI_LIBRARY OGRE_MESHLODGENERATOR_LIBRARY
                 OGRE_OVERLAY_LIBRARY OGRE_PROPERTY_LIBRARY OGRE_RTSHADERSYSTEM_LIBRARY OGRE_RENDERSYSTEMGL3PLUS_LIBRARY OGRE_RENDERSYSTEMD3D11_LIBRARY OGRE_MAIN_LIBRARY_DEBUG
                 OGRE_HLMS_LIBRARY_DEBUG OGRE_GLSUPPORT_LIBRARY_DEBUG OGRE_BITES_LIBRARY_DEBUG OGRE_CODECSTBI_LIBRARY_DEBUG OGRE_MESHLODGENERATOR_LIBRARY_DEBUG
                 OGRE_OVERLAY_LIBRARY_DEBUG OGRE_PROPERTY_LIBRARY_DEBUG OGRE_RTSHADERSYSTEM_LIBRARY_DEBUG OGRE_RENDERSYSTEMD3D11_LIBRARY_DEBUG OGRE_CODECFREEIMAGE_LIBRARY)

# Reset suffixes
if(CMAKE_FIND_LIBRARY_SUFFIXES_BAK)
    set(CMAKE_FIND_LIBRARY_SUFFIXES ${CMAKE_FIND_LIBRARY_SUFFIXES_BAK})
endif()
