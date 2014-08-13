{-# LANGUAGE ForeignFunctionInterface, CPP #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.EXT.DepthBoundsTest
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the EXT_depth_bounds_test extension, see
-- <http://www.opengl.org/registry/specs/EXT/depth_bounds_test.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.EXT.DepthBoundsTest (
   -- * Functions
   glDepthBounds,
   -- * Tokens
   gl_DEPTH_BOUNDS_TEST,
   gl_DEPTH_BOUNDS
) where

import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Core31.Types
import Graphics.Rendering.OpenGL.Raw.Extensions

#include "HsOpenGLRaw.h"

extensionNameString :: String
extensionNameString = "GL_EXT_depth_bounds_test"

EXTENSION_ENTRY(dyn_glDepthBounds,ptr_glDepthBounds,"glDepthBounds",glDepthBounds,GLclampd -> GLclampd -> IO())

gl_DEPTH_BOUNDS_TEST :: GLenum
gl_DEPTH_BOUNDS_TEST = 0x8890

gl_DEPTH_BOUNDS :: GLenum
gl_DEPTH_BOUNDS = 0x8891
