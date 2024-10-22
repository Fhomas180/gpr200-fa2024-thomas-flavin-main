#version 330 core
out vec4 FragColor;
in vec3 ourColor;
uniform float _Time;
void main()
{
   FragColor = vec4(ourColor *sin(_Time), 1.0f);
};