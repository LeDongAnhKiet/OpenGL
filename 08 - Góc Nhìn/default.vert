#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTex;

out vec3 color;
out vec2 txCrd;
// nhap ma tran camera tu ham chinh
uniform mat4 camMat;

void main()
{
	gl_Position = camMat * vec4(aPos, 1.0);
	color = aColor;
	txCrd = aTex;
}