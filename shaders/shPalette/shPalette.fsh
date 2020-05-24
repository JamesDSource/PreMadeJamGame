//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 pal_black;
uniform vec3 pal_white;
uniform vec3 pal_dkgray;
uniform vec3 pal_ltgray;

void main() {
	vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec3 mod_col = base_col.rgb;
	float value = (base_col.r + base_col.g + base_col.b)/ 3.0;
	
	// Black
	if(value == 0.0) {
		mod_col = pal_black;
	}
	
	// White
	if(value == 1.0) {
		mod_col = pal_white;
	}

	// Dark Gray
	if(abs(value - (100.0/255.0)) < 0.001) {
		mod_col = pal_dkgray;
	}
	
	// Light Gray
	if(abs(value - (200.0/255.0)) < 0.001) {
		mod_col = pal_ltgray;
	}
    gl_FragColor = vec4(mod_col, base_col.a);
}
