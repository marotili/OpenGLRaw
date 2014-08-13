{-# LANGUAGE ForeignFunctionInterface, CPP #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.ComputeShader
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the ARB_compute_shader extension, see
-- <http://www.opengl.org/registry/specs/ARB/compute_shader.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.ComputeShader (
   -- * Functions
   glDispatchCompute, glDispatchComputeIndirect,

   -- * Tokens
   gl_COMPUTE_SHADER,
   gl_MAX_COMPUTE_UNIFORM_BLOCKS,
   gl_MAX_COMPUTE_TEXTURE_IMAGE_UNITS,
   gl_MAX_COMPUTE_IMAGE_UNIFORMS,
   gl_MAX_COMPUTE_SHARED_MEMORY_SIZE,
   gl_MAX_COMPUTE_UNIFORM_COMPONENTS,
   gl_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS,
   gl_MAX_COMPUTE_ATOMIC_COUNTERS,
   gl_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS,
   gl_MAX_COMPUTE_LOCAL_INVOCATIONS,
   gl_MAX_COMPUTE_WORK_GROUP_COUNT,
   gl_MAX_COMPUTE_WORK_GROUP_SIZE,
   gl_COMPUTE_LOCAL_WORK_SIZE,
   gl_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER,
   gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER,
   gl_DISPATCH_INDIRECT_BUFFER,
   gl_DISPATCH_INDIRECT_BUFFER_BINDING,
   gl_COMPUTE_SHADER_BIT
) where

import Foreign.C.Types
import Graphics.Rendering.OpenGL.Raw.Extensions
import Graphics.Rendering.OpenGL.Raw.Core31.Types

#include "HsOpenGLRaw.h"

extensionNameString :: String
extensionNameString = "GL_ARB_compute_shader"

EXTENSION_ENTRY(dyn_glDispatchCompute,ptr_glDispatchCompute,"glDispatchCompute",glDispatchCompute,GLuint -> GLuint -> GLuint -> IO ())
EXTENSION_ENTRY(dyn_glDispatchComputeIndirect,ptr_glDispatchComputeIndirect,"glDispatchComputeIndirect",glDispatchComputeIndirect,GLintptr -> IO ())

gl_COMPUTE_SHADER :: GLenum
gl_COMPUTE_SHADER = 0x91B9

gl_MAX_COMPUTE_UNIFORM_BLOCKS :: GLenum
gl_MAX_COMPUTE_UNIFORM_BLOCKS = 0x91BB

gl_MAX_COMPUTE_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 0x91BC

gl_MAX_COMPUTE_IMAGE_UNIFORMS :: GLenum
gl_MAX_COMPUTE_IMAGE_UNIFORMS = 0x91BD

gl_MAX_COMPUTE_SHARED_MEMORY_SIZE :: GLenum
gl_MAX_COMPUTE_SHARED_MEMORY_SIZE = 0x8262

gl_MAX_COMPUTE_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMPUTE_UNIFORM_COMPONENTS = 0x8263

gl_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 0x8264

gl_MAX_COMPUTE_ATOMIC_COUNTERS :: GLenum
gl_MAX_COMPUTE_ATOMIC_COUNTERS = 0x8265

gl_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 0x8266

gl_MAX_COMPUTE_LOCAL_INVOCATIONS :: GLenum
gl_MAX_COMPUTE_LOCAL_INVOCATIONS = 0x90EB

gl_MAX_COMPUTE_WORK_GROUP_COUNT :: GLenum
gl_MAX_COMPUTE_WORK_GROUP_COUNT = 0x91BE

gl_MAX_COMPUTE_WORK_GROUP_SIZE :: GLenum
gl_MAX_COMPUTE_WORK_GROUP_SIZE = 0x91BF

gl_COMPUTE_LOCAL_WORK_SIZE :: GLenum
gl_COMPUTE_LOCAL_WORK_SIZE = 0x8267

gl_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = 0x90EC

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 0x90ED

gl_DISPATCH_INDIRECT_BUFFER :: GLenum
gl_DISPATCH_INDIRECT_BUFFER = 0x90EE

gl_DISPATCH_INDIRECT_BUFFER_BINDING :: GLenum
gl_DISPATCH_INDIRECT_BUFFER_BINDING = 0x90EF

gl_COMPUTE_SHADER_BIT :: GLbitfield
gl_COMPUTE_SHADER_BIT = 0x00000020
