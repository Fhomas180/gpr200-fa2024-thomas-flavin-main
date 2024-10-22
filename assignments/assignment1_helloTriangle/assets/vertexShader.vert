#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
out vec3 ourColor;
uniform float _Time;
uniform mat4 _Model;
uniform mat4 transform;
uniform mat4 view;
uniform mat4 projection;
mat4 scale(float x, float y, float z) {
   mat4 m;
    m[0][0] = x;
   m[1][1] = y;
    m[2][2] = z;
    return m;
}
mat4 rotateZ(float a) {
    mat4 m = mat4(1.0);
   m[0][0] = cos(a);
    m[1][0] = -sin(a);
    m[0][1] = sin(a);
   m[1][1] = cos(a);
   m[2][2] = 1.0;
   return m;
}

mat4 translate(float x, float y, float z) {
   mat4 m = mat4(1.0);
    m[3][0] = x;
  m[3][1] = y;
    m[3][2] = z;
   return m;
}
void main() {
  vec3 Cool = vec3(aPos.x + cos(_Time), aPos.y + sin(_Time), 0) * 0.5;
    float angle = radians(_Time * 90.0);
   mat4 scaleMat = scale(2.0, 1.0, 1.0);
   mat4 rotateMat = rotateZ(angle);
    mat4 translateMat = translate(0.5, 0.0, 0.0);
    mat4 transformMatrix = translateMat * rotateMat * scaleMat;
    gl_Position = transformMatrix * vec4(Cool + aPos, 1.0);
//gl_Position = projection * view * model * vec4(aPos, 1.0);
   //gl_Position = vec4(aPos + Cool, 1.0);
   ourColor = aColor;
};