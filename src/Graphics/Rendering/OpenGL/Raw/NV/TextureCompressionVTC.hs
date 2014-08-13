--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.NV.TextureCompressionVTC
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the NV_light_max_exponent extension not
-- already in the OpenGL 3.1 core, see
-- <http://www.opengl.org/registry/specs/NV/light_max_exponent.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.NV.TextureCompressionVTC (
   -- * Tokens
   gl_COMPRESSED_RGB_S3TC_DXT1,
   gl_COMPRESSED_RGBA_S3TC_DXT1,
   gl_COMPRESSED_RGBA_S3TC_DXT3,
   gl_COMPRESSED_RGBA_S3TC_DXT5
) where

import Graphics.Rendering.OpenGL.Raw.EXT.TextureCompressionS3TC
