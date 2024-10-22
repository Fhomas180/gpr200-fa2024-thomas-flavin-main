/*#version 330 core
out vec4 FragColor;
in vec3 ourColor;
in vec2 TexCoord;
uniform float _Time;
uniform sampler2D backgroundTexture;
uniform sampler2D characterTexture;
void main()
{
   FragColor = vec4(ourColor *sin(_Time), 1.0f);
  vec4 backgroundColor = texture(backgroundTexture, TexCoord);
vec4 characterColor = texture(characterTexture, TexCoord);
 FragColor = characterColor * characterColor.a + backgroundColor * (1.0 - characterColor.a);
};*/