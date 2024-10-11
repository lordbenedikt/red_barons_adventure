//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, 0.0, 1.0);
    gl_Position = object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~
//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 gm_pSurfaceDimensions;
uniform float gm_pPreMultiplyAlpha;
uniform vec2 gm_pSurfaceTexelSize;
uniform vec2 gm_pCamOffset;
uniform float gm_pTime;

uniform sampler2D g_DistortTexture;
//uniform vec2 g_DistortTextureDimensions;
uniform vec2 g_DistortTextureTexelSize;
uniform float g_Distort1Speed;
uniform float g_Distort2Speed;
uniform vec2 g_Distort1Scale;
uniform vec2 g_Distort2Scale;
uniform float g_Distort1Amount;
uniform float g_Distort2Amount;
uniform float g_ChromaSpreadAmount;
uniform float g_CamOffsetScale;
uniform vec4 g_GlintCol;
uniform vec4 g_TintCol;
uniform vec4 g_AddCol;

void main()
{
	// Using the reciprocal of the scale values is more intuitive for the user
	vec2 rcpDistort1Scale = vec2(1.0 / g_Distort1Scale.x, 1.0 / g_Distort1Scale.y);
	vec2 rcpDistort2Scale = vec2(1.0 / g_Distort2Scale.x, 1.0 / g_Distort2Scale.y);
	
	vec2 noise1coord = ((v_vTexcoord * gm_pSurfaceDimensions) * g_DistortTextureTexelSize) * rcpDistort1Scale;
	vec2 noise2coord = ((v_vTexcoord * gm_pSurfaceDimensions) * g_DistortTextureTexelSize) * rcpDistort2Scale;	
	noise1coord.y += g_Distort1Speed;
	noise2coord.y += g_Distort2Speed;	
	
	noise1coord += (gm_pCamOffset * g_DistortTextureTexelSize) * rcpDistort1Scale * g_CamOffsetScale;	
	noise2coord += (gm_pCamOffset * g_DistortTextureTexelSize) * rcpDistort2Scale * g_CamOffsetScale;
	
	vec4 noise1col = texture2D( g_DistortTexture, noise1coord );
	vec4 noise2col = texture2D( g_DistortTexture, noise2coord );	
	noise1col -= 0.5;
	noise2col -= 0.5;	
	
	vec4 blendednoisecol = (noise1col * g_Distort1Amount) + (noise2col * g_Distort2Amount);	
	
	vec4 tempcol = blendednoisecol / ((g_Distort1Amount + g_Distort2Amount) * 0.5);	
	float colscale = dot(tempcol.rg, tempcol.rg);
	colscale *= 0.70711;
	colscale *= colscale;
	colscale *= colscale;	
	
	vec2 sampleoffset = blendednoisecol.xy * gm_pSurfaceTexelSize;
	vec2 sampleoffset_r = sampleoffset * (1.0 + g_ChromaSpreadAmount);
	vec2 sampleoffset_g = sampleoffset * (1.0 + (g_ChromaSpreadAmount * 0.5));
	vec2 sampleoffset_b = sampleoffset * 1.0;
	
	vec4 wobbledcol;
	wobbledcol.r = texture2D( gm_BaseTexture, v_vTexcoord + sampleoffset_r ).r;
	wobbledcol.g = texture2D( gm_BaseTexture, v_vTexcoord + sampleoffset_g ).g;
	wobbledcol.b = texture2D( gm_BaseTexture, v_vTexcoord + sampleoffset_b ).b;
	wobbledcol.a = texture2D( gm_BaseTexture, v_vTexcoord + sampleoffset_r ).a;

	float colmul = 1.0;
	if (gm_pPreMultiplyAlpha > 0.0)
	{
		colmul = wobbledcol.a;
	}
	
	wobbledcol.rgb += vec3(colscale, colscale, colscale) * (g_GlintCol.rgb * colmul);
	wobbledcol.rgb *= g_TintCol.rgb;
	wobbledcol.rgb += (g_AddCol.rgb * colmul);
	    
	gl_FragColor = v_vColour * wobbledcol;
}

