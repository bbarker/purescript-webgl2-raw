module Test.SkipTests
  ( const_skipped
  ) where

--import Prelude (Array, String)

const_skipped :: Array String
const_skipped = -- Crashes headless chrome:
                [ "conformance/context/context-eviction-with-garbage-collection.html"
                , "conformance/context/context-lost-restored.html"
                , "conformance/state/gl-object-get-calls.html"
                , "conformance2/state/gl-object-get-calls.html"

                , "conformance/extensions/oes-texture-float-with-video.html"
                -- ^ times out - video won't play without "user interaction"

                , "conformance/extensions/oes-texture-half-float-with-video.html"
                -- ^ times out - video won't play without "user interaction"

                , "conformance/context/context-lost.html"
                -- ^ `getExtension` returning null after context lost not
                --   worth the effort to emulate in test... nothing wrong with
                --   original ps code, only the js wrapper

                , "conformance/context/user-defined-properties-on-context.html"
                -- ^ js wrapper only, not worth the effort

                , "conformance/extensions/oes-element-index-uint.html"
                -- ^ breaks because of the way the js wrapper caches extensions...
                -- if I change it, multiple other tests fail, so its easier to just
                -- ignore this one.

                -- Video-related tests: fail because video won't play without
                -- "user interaction"
                , "conformance/textures/tex-image-and-sub-image-2d-with-video.html"
                , "conformance/textures/tex-image-and-sub-image-2d-with-video-rgb565.html"
                , "conformance/textures/tex-image-and-sub-image-2d-with-video-rgba4444.html"
                , "conformance/textures/tex-image-and-sub-image-2d-with-video-rgba5551.html"
                , "conformance/textures/texture-npot-video.html"
                , "conformance/textures/video/tex-2d-rgb-rgb-unsigned_byte.html"
                , "conformance/textures/video/tex-2d-rgb-rgb-unsigned_short_5_6_5.html"
                , "conformance/textures/video/tex-2d-rgba-rgba-unsigned_byte.html"
                , "conformance/textures/video/tex-2d-rgba-rgba-unsigned_short_4_4_4_4.html"
                , "conformance/textures/video/tex-2d-rgba-rgba-unsigned_short_5_5_5_1.html"
                , "conformance/textures/image_bitmap_from_video/tex-2d-rgb-rgb-unsigned_byte.html"
                , "conformance/textures/image_bitmap_from_video/tex-2d-rgb-rgb-unsigned_short_5_6_5.html"
                , "conformance/textures/image_bitmap_from_video/tex-2d-rgba-rgba-unsigned_byte.html"
                , "conformance/textures/image_bitmap_from_video/tex-2d-rgba-rgba-unsigned_short_4_4_4_4.html"
                , "conformance/textures/image_bitmap_from_video/tex-2d-rgba-rgba-unsigned_short_5_5_5_1.html"
                , "conformance2/textures/video/tex-2d-r8-red-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-r16f-red-half_float.html"
                , "conformance2/textures/video/tex-2d-r16f-red-float.html"
                , "conformance2/textures/video/tex-2d-r32f-red-float.html"
                , "conformance2/textures/video/tex-2d-r8ui-red_integer-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-rg8-rg-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-rg16f-rg-half_float.html"
                , "conformance2/textures/video/tex-2d-rg16f-rg-float.html"
                , "conformance2/textures/video/tex-2d-rg32f-rg-float.html"
                , "conformance2/textures/video/tex-2d-rg8ui-rg_integer-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-rgb8-rgb-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-srgb8-rgb-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-rgb565-rgb-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-rgb565-rgb-unsigned_short_5_6_5.html"
                , "conformance2/textures/video/tex-2d-r11f_g11f_b10f-rgb-unsigned_int_10f_11f_11f_rev.html"
                , "conformance2/textures/video/tex-2d-r11f_g11f_b10f-rgb-half_float.html"
                , "conformance2/textures/video/tex-2d-r11f_g11f_b10f-rgb-float.html"
                , "conformance2/textures/video/tex-2d-rgb9_e5-rgb-half_float.html"
                , "conformance2/textures/video/tex-2d-rgb9_e5-rgb-float.html"
                , "conformance2/textures/video/tex-2d-rgb16f-rgb-half_float.html"
                , "conformance2/textures/video/tex-2d-rgb16f-rgb-float.html"
                , "conformance2/textures/video/tex-2d-rgb32f-rgb-float.html"
                , "conformance2/textures/video/tex-2d-rgb8ui-rgb_integer-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-rgba8-rgba-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-srgb8_alpha8-rgba-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-rgb5_a1-rgba-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-rgb5_a1-rgba-unsigned_short_5_5_5_1.html"
                , "conformance2/textures/video/tex-2d-rgba4-rgba-unsigned_byte.html"
                , "conformance2/textures/video/tex-2d-rgba4-rgba-unsigned_short_4_4_4_4.html"
                , "conformance2/textures/video/tex-2d-rgba16f-rgba-half_float.html"
                , "conformance2/textures/video/tex-2d-rgba16f-rgba-float.html"
                , "conformance2/textures/video/tex-2d-rgba32f-rgba-float.html"
                , "conformance2/textures/video/tex-2d-rgba8ui-rgba_integer-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-r8-red-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-r16f-red-half_float.html"
                , "conformance2/textures/video/tex-3d-r16f-red-float.html"
                , "conformance2/textures/video/tex-3d-r32f-red-float.html"
                , "conformance2/textures/video/tex-3d-r8ui-red_integer-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-rg8-rg-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-rg16f-rg-half_float.html"
                , "conformance2/textures/video/tex-3d-rg16f-rg-float.html"
                , "conformance2/textures/video/tex-3d-rg32f-rg-float.html"
                , "conformance2/textures/video/tex-3d-rg8ui-rg_integer-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-rgb8-rgb-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-srgb8-rgb-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-rgb565-rgb-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-rgb565-rgb-unsigned_short_5_6_5.html"
                , "conformance2/textures/video/tex-3d-r11f_g11f_b10f-rgb-unsigned_int_10f_11f_11f_rev.html"
                , "conformance2/textures/video/tex-3d-r11f_g11f_b10f-rgb-half_float.html"
                , "conformance2/textures/video/tex-3d-r11f_g11f_b10f-rgb-float.html"
                , "conformance2/textures/video/tex-3d-rgb9_e5-rgb-half_float.html"
                , "conformance2/textures/video/tex-3d-rgb9_e5-rgb-float.html"
                , "conformance2/textures/video/tex-3d-rgb16f-rgb-half_float.html"
                , "conformance2/textures/video/tex-3d-rgb16f-rgb-float.html"
                , "conformance2/textures/video/tex-3d-rgb32f-rgb-float.html"
                , "conformance2/textures/video/tex-3d-rgb8ui-rgb_integer-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-rgba8-rgba-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-srgb8_alpha8-rgba-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-rgb5_a1-rgba-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-rgb5_a1-rgba-unsigned_short_5_5_5_1.html"
                , "conformance2/textures/video/tex-3d-rgba4-rgba-unsigned_byte.html"
                , "conformance2/textures/video/tex-3d-rgba4-rgba-unsigned_short_4_4_4_4.html"
                , "conformance2/textures/video/tex-3d-rgba16f-rgba-half_float.html"
                , "conformance2/textures/video/tex-3d-rgba16f-rgba-float.html"
                , "conformance2/textures/video/tex-3d-rgba32f-rgba-float.html"
                , "conformance2/textures/video/tex-3d-rgba8ui-rgba_integer-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-r8-red-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-r16f-red-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-r16f-red-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-r32f-red-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-r8ui-red_integer-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rg8-rg-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rg16f-rg-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rg16f-rg-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rg32f-rg-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rg8ui-rg_integer-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb8-rgb-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-srgb8-rgb-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb565-rgb-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb565-rgb-unsigned_short_5_6_5.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-r11f_g11f_b10f-rgb-unsigned_int_10f_11f_11f_rev.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-r11f_g11f_b10f-rgb-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-r11f_g11f_b10f-rgb-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb9_e5-rgb-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb9_e5-rgb-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb16f-rgb-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb16f-rgb-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb32f-rgb-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb8ui-rgb_integer-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgba8-rgba-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-srgb8_alpha8-rgba-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb5_a1-rgba-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgb5_a1-rgba-unsigned_short_5_5_5_1.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgba4-rgba-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgba4-rgba-unsigned_short_4_4_4_4.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgba16f-rgba-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgba16f-rgba-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgba32f-rgba-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-2d-rgba8ui-rgba_integer-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-r8-red-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-r16f-red-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-r16f-red-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-r32f-red-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-r8ui-red_integer-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rg8-rg-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rg16f-rg-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rg16f-rg-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rg32f-rg-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rg8ui-rg_integer-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb8-rgb-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-srgb8-rgb-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb565-rgb-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb565-rgb-unsigned_short_5_6_5.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-r11f_g11f_b10f-rgb-unsigned_int_10f_11f_11f_rev.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-r11f_g11f_b10f-rgb-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-r11f_g11f_b10f-rgb-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb9_e5-rgb-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb9_e5-rgb-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb16f-rgb-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb16f-rgb-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb32f-rgb-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb8ui-rgb_integer-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgba8-rgba-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-srgb8_alpha8-rgba-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb5_a1-rgba-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgb5_a1-rgba-unsigned_short_5_5_5_1.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgba4-rgba-unsigned_byte.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgba4-rgba-unsigned_short_4_4_4_4.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgba16f-rgba-half_float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgba16f-rgba-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgba32f-rgba-float.html"
                , "conformance2/textures/image_bitmap_from_video/tex-3d-rgba8ui-rgba_integer-unsigned_byte.html"

                -- Fails in non-ps version:
                , "conformance/misc/webgl-specific.html"
                , "conformance/more/conformance/constants.html"
                , "conformance2/textures/misc/copy-texture-image.html"
                , "conformance2/textures/misc/tex-image-with-bad-args-from-dom-elements.html"
                , "conformance2/textures/misc/tex-image-with-different-data-source.html"

                -- These ones are too slow... even without the PS overhead,
                -- they just keep going and going and going
                , "deqp/data/gles3/shaders/conversions.html"
                , "deqp/data/gles3/shaders/preprocessor.html"
                , "deqp/data/gles3/shaders/swizzles.html"
                , "deqp/functional/gles3/uniformapi/value_assigned.html"
                , "deqp/functional/gles3/shadercommonfunction.html"

                -- Passes on regular chrome, fails in headless
                , "conformance/context/context-hidden-alpha.html"
                , "conformance/extensions/webgl-draw-buffers.html"
                , "deqp/functional/gles3/fbocolorbuffer/tex2d_00.html"
                , "deqp/functional/gles3/fbocolorbuffer/tex2d_01.html"
                , "deqp/functional/gles3/fbocolorbuffer/tex2darray_00.html"
                , "deqp/functional/gles3/fbocolorbuffer/tex2darray_01.html"
                , "deqp/functional/gles3/fbocolorbuffer/tex3d_00.html"
                , "deqp/functional/gles3/fbocolorbuffer/tex3d_01.html"
                , "deqp/functional/gles3/fbocolorbuffer/texcube_00.html"
                , "deqp/functional/gles3/fbocolorbuffer/texcube_01.html"
                , "deqp/functional/gles3/fboinvalidate/whole.html"
                , "deqp/functional/gles3/fboinvalidate/sub.html"
                , "deqp/functional/gles3/fborender/resize_00.html"
                , "deqp/functional/gles3/fborender/resize_01.html"
                , "deqp/functional/gles3/fborender/resize_02.html"
                , "deqp/functional/gles3/fborender/resize_03.html"
                , "deqp/functional/gles3/fborender/recreate_color_00.html"
                , "deqp/functional/gles3/fborender/recreate_color_01.html"
                , "deqp/functional/gles3/fborender/recreate_color_02.html"
                , "deqp/functional/gles3/fborender/recreate_color_04.html"
                , "deqp/functional/gles3/fborender/recreate_color_05.html"
                , "deqp/functional/gles3/fborender/recreate_color_06.html"
                , "deqp/functional/gles3/shaderoperator/unary_operator_01.html"
                , "deqp/functional/gles3/shaderoperator/unary_operator_02.html"
                , "deqp/functional/gles3/shaderoperator/binary_operator_00.html"
                , "deqp/functional/gles3/shaderoperator/binary_operator_01.html"
                , "deqp/functional/gles3/shaderoperator/binary_operator_04.html"
                , "deqp/functional/gles3/shaderoperator/binary_operator_05.html"
                , "deqp/functional/gles3/shaderoperator/binary_operator_06.html"
                , "deqp/functional/gles3/shaderoperator/binary_operator_09.html"
                , "deqp/functional/gles3/shaderoperator/binary_operator_10.html"
                , "deqp/functional/gles3/shaderoperator/binary_operator_11.html"
                , "deqp/functional/gles3/shaderoperator/binary_operator_14.html"
                , "deqp/functional/gles3/shaderoperator/binary_operator_15.html"
                , "deqp/functional/gles3/shaderoperator/common_functions.html"
                , "deqp/functional/gles3/texturefiltering/cube_combinations_00.html"
                , "deqp/functional/gles3/texturefiltering/cube_combinations_01.html"
                , "deqp/functional/gles3/texturefiltering/cube_combinations_02.html"
                , "deqp/functional/gles3/texturefiltering/cube_combinations_03.html"
                , "deqp/functional/gles3/texturefiltering/cube_combinations_04.html"
                , "deqp/functional/gles3/texturefiltering/cube_combinations_05.html"
                , "deqp/functional/gles3/texturespecification/texsubimage2d_pbo_params.html"
                , "deqp/functional/gles3/uniformbuffers/single_basic_type.html"
                , "deqp/functional/gles3/uniformbuffers/random.html"
                , "deqp/functional/gles3/fbocompleteness.html"
                , "deqp/functional/gles3/fbomultisample.2_samples.html"
                , "deqp/functional/gles3/fbomultisample.4_samples.html"
                , "deqp/functional/gles3/multisample.html"
                , "deqp/functional/gles3/shaderloop_for.html"
                , "deqp/functional/gles3/shaderloop_while.html"
                , "conformance2/attribs/gl-vertexattribipointer-offsets.html"
                , "conformance2/glsl3/array-as-return-value.html"
                , "conformance2/glsl3/array-complex-indexing.html"
                , "conformance2/glsl3/array-equality.html"
                , "conformance2/glsl3/array-in-complex-expression.html"
                , "conformance2/glsl3/compound-assignment-type-combination.html"
                , "conformance2/glsl3/short-circuiting-in-loop-condition.html"
                , "conformance2/glsl3/vector-dynamic-indexing.html"
                , "conformance2/programs/gl-get-frag-data-location.html"
                , "conformance2/reading/read-pixels-from-fbo-test.html"
                , "conformance2/renderbuffers/invalidate-framebuffer.html"
                , "conformance2/rendering/blitframebuffer-filter-outofbounds.html"
                , "conformance2/rendering/blitframebuffer-filter-srgb.html"
                , "conformance2/rendering/blitframebuffer-multisampled-readbuffer.html"
                , "conformance2/rendering/blitframebuffer-test.html"
                , "conformance2/samplers/sampler-drawing-test.html"
                , "conformance2/textures/misc/tex-mipmap-levels.html"
                , "conformance2/textures/misc/tex-unpack-params.html"
                , "conformance2/textures/misc/texel-fetch-undefined.html"
                , "conformance2/vertex_arrays/vertex-array-object.html"

                -- Depends on `instanceof`, so our fake js context won't work
                , "conformance/context/context-type-test.html"
                , "conformance/misc/instanceof-test.html"
                , "conformance2/context/context-type-test-2.html"
                , "conformance2/misc/instanceof-test.html"

                ]
