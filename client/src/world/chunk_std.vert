#version 140

in vec3 position;
in vec3 color;
out vec3 x_color;

uniform vec2 offset;
uniform mat4 proj_matrix;
uniform mat4 view_matrix;
uniform mat4 scale_matrix;

void main() {
    gl_Position = proj_matrix * view_matrix * transpose(scale_matrix) *
    vec4(position.xy + offset, position.z, 1);
    x_color = (gl_Position.xyz * position)*sin(gl_Position.x)*cos(gl_Position.y);
}