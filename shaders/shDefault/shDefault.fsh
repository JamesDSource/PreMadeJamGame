//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 pal_black;
uniform vec3 pal_white;

void main() {
	vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 mod_col = base_col;
	float average = (base_col.r + base_col.g + base_col.b)/3.0;
	
	if(average == 0.0) {mod_col = vec4(pal_black, mod_col.a);}
	else if(average == 1.0) {mod_col = vec4(pal_white, mod_col.a);}
	
    gl_FragColor = mod_col;
}
