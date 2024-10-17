function multiply_colors(color1, color2) {
    var r1 = color_get_red(color1);
    var g1 = color_get_green(color1);
    var b1 = color_get_blue(color1);

    var r2 = color_get_red(color2);
    var g2 = color_get_green(color2);
    var b2 = color_get_blue(color2);

    // Perform component-wise multiplication and normalize
    var new_red = clamp((r1 * r2) / 255, 0, 255);
    var new_green = clamp((g1 * g2) / 255, 0, 255);
    var new_blue = clamp((b1 * b2) / 255, 0, 255);

    // Return the new combined color
    return make_color_rgb(new_red, new_green, new_blue);
}