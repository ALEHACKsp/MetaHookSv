#version 130

uniform float speed;

void main(void)
{
#ifdef DIFFUSE_ENABLED
	gl_TexCoord[0] = vec4(gl_MultiTexCoord0.x + gl_MultiTexCoord0.z * speed, gl_MultiTexCoord0.y, 0.0, 0.0);
#endif

#ifdef LIGHTMAP_ENABLED
	gl_TexCoord[1] = gl_MultiTexCoord1;
#endif

#ifdef DETAILTEXTURE_ENABLED
	gl_TexCoord[2] = gl_MultiTexCoord2;
#endif

	gl_Position = ftransform();
}