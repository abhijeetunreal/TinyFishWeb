shader_type canvas_item;

uniform vec2 direction = vec2(0, 0.1);
uniform float speed_scale =0.4;

void fragment() {
	// Place fragment code here.
	vec2 move = direction * TIME * speed_scale;
	COLOR = texture(TEXTURE, UV + move);
	
	
}
