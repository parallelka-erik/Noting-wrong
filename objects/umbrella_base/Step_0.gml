if (keyboard_check(ord("e")) || keyboard_check(ord("E"))) {
	is_fading_in = true
}

if (is_fading_in && image_alpha < 1) {
    image_alpha += fade_speed;
} else if (image_alpha >= 1) {
    image_alpha = 1;
}