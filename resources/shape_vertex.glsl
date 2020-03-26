#version 330 core
layout(location = 0) in vec3 vertPos;
layout(location = 1) in vec3 vertNor;
layout(location = 2) in vec3 vertTex;

uniform mat4 P;
uniform mat4 V;
uniform mat4 M;
out vec3 fragNor;
out vec3 fragPos;

void main()
{
	fragNor = vec4(M * vec4(vertNor, 0.0)).xyz;
	gl_Position = P * V * M * vec4(vertPos, 1.0);
	fragPos = gl_Position.xyz;
}
