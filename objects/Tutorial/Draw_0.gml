
// Draw text
draw_set_alpha(image_alpha);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_transformed(x, y, text, scale, scale, 0);
draw_set_alpha(1);