#version 450 core
#define GLSL
#define BINDING_POINTS
//post_process colour_lut ps 0
#ifdef GLES
// precision qualifiers
precision highp float;
precision highp sampler2DArray;
#endif
// texture
#ifdef BINDING_POINTS
#define _tex_binding(sampler_index) layout(binding = sampler_index)
#else
#define _tex_binding(sampler_index)
#endif
#define texture_2d( sampler_name, sampler_index ) _tex_binding(sampler_index) uniform sampler2D sampler_name
#define texture_3d( sampler_name, sampler_index ) _tex_binding(sampler_index) uniform sampler3D sampler_name
#define texture_cube( sampler_name, sampler_index ) _tex_binding(sampler_index) uniform samplerCube sampler_name
#define texture_2d_array( sampler_name, sampler_index ) _tex_binding(sampler_index) uniform sampler2DArray sampler_name
#ifdef GLES
#define sample_texture_2dms( sampler_name, x, y, fragment ) texture( sampler_name, vec2(0.0, 0.0) )
#define texture_2dms( type, samples, sampler_name, sampler_index ) uniform sampler2D sampler_name
#else
#define sample_texture_2dms( sampler_name, x, y, fragment ) texelFetch( sampler_name, ivec2( x, y ), fragment )
#define texture_2dms( type, samples, sampler_name, sampler_index ) _tex_binding(sampler_index) uniform sampler2DMS sampler_name
#endif
// sampler
#define sample_texture( sampler_name, V ) texture( sampler_name, V )
#define sample_texture_level( sampler_name, V, l ) textureLod( sampler_name, V, l )
#define sample_texture_grad( sampler_name, V, vddx, vddy ) textureGrad( sampler_name, V, vddx, vddy )
#define sample_texture_array( sampler_name, V, a ) texture( sampler_name, vec3(V, a) )
#define sample_texture_array_level( sampler_name, V, a, l ) textureLod( sampler_name, vec3(V, a), l )
// matrix
#define to_3x3( M4 ) float3x3(M4)
#define from_columns_3x3(A, B, C) (transpose(float3x3(A, B, C)))
#define from_rows_3x3(A, B, C) (float3x3(A, B, C))
#define unpack_vb_instance_mat( mat, r0, r1, r2, r3 ) mat[0] = r0; mat[1] = r1; mat[2] = r2; mat[3] = r3;
#define to_data_matrix(mat) mat
// clip
#define remap_z_clip_space( d ) d // gl clip space is -1 to 1, and this is normalised device coordinate
#define remap_depth( d ) (d = d * 0.5 + 0.5)
#define remap_ndc_ray( r ) float2(r.x, r.y)
#define depth_ps_output gl_FragDepth
// def
#define float4x4 mat4
#define float3x3 mat3
#define float2x2 mat2
#define float4 vec4
#define float3 vec3
#define float2 vec2
#define modf mod
#define frac fract
#define lerp mix
#define mul( A, B ) ((A) * (B))
#define mul_tbn( A, B ) ((B) * (A))
#define saturate( A ) (clamp( A, 0.0, 1.0 ))
#define atan2( A, B ) (atan(A, B))
#define ddx dFdx
#define ddy dFdy
#define _pmfx_unroll
#define chebyshev_normalize( V ) (V.xyz / max( max(abs(V.x), abs(V.y)), abs(V.z) ))
#define max3(v) max(max(v.x, v.y),v.z)
#define max4(v) max(max(max(v.x, v.y),v.z), v.w)
#define PI 3.14159265358979323846264
layout(location = 1) in float4 texcoord_vs_output;
layout(location = 0) out float4 colour_ps_output;
struct vs_output
{
    float4 position;
    float4 texcoord;
};
struct ps_output
{
    float4 colour;
};
struct light_data
{
    float4 pos_radius;
    float4 dir_cutoff;
    float4 colour;
    float4 data;
};
struct distance_field_shadow
{
    float4x4 world_matrix;
    float4x4 world_matrix_inv;
};
struct area_light_data
{
    float4 corners[4];
    float4 colour;
};
texture_2d( src_texture_0, 0 );
texture_2d( lookup_texture, 8 );
void main()
{
    //assign vs_output struct from glsl inputs
    vs_output _input;
    _input.texcoord = texcoord_vs_output;
    ps_output _output;
    float2 tc = _input.texcoord.xy;
    float4 input_colour = sample_texture(src_texture_0, tc);
    float input_b = input_colour.b * 63.0;
    float2 quad_1;
    quad_1.y = floor(floor(input_b) / 8.0);
    quad_1.x = floor(input_b) - (quad_1.y * 8.0);
    float2 quad_2;
    quad_2.y = floor(ceil(input_b) / 8.0);
    quad_2.x = ceil(input_b) - (quad_2.y * 8.0);
    float2 tc_1;
    tc_1.x = (quad_1.x * 0.125) + 0.5 / 512.0 + ((0.125 - 1.0 / 512.0) * input_colour.r);
    tc_1.y = (quad_1.y * 0.125) + 0.5 / 512.0 + ((0.125 - 1.0 / 512.0) * input_colour.g);
    float2 tc_2;
    tc_2.x = (quad_2.x * 0.125) + 0.5 / 512.0 + ((0.125 - 1.0 / 512.0) * input_colour.r);
    tc_2.y = (quad_2.y * 0.125) + 0.5 / 512.0 + ((0.125 - 1.0 / 512.0) * input_colour.g);
    float4 remapped_1 = sample_texture_level(lookup_texture, tc_1, 0.0);
    float4 remapped_2 = sample_texture_level(lookup_texture, tc_2, 0.0);
    _output.colour = lerp(remapped_1, remapped_2, frac(input_b));
    //assign glsl global outputs from structs
    colour_ps_output = _output.colour;
}
