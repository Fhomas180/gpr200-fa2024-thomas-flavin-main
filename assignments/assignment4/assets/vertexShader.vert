/*#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
//"layout (location = 0) in vec3 aPos;\n"
layout (location = 1) in vec2 aTexCoord;
out vec2 TexCoord;
out vec3 ourColor;
uniform float _Time;
void main()
{
  vec3 Cool = vec3(aPos.x + cos(_Time), aPos.y + sin(_Time) , 0)*0.5;  
   gl_Position = vec4(aPos + Cool, 1.0);
  gl_Position = vec4(aPos, 1.0); 
 TexCoord = aTexCoord;
   ourColor = aColor;
};*/