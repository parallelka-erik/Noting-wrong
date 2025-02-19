if (image_alpha < 1) {
    image_alpha += fade_speed; // Увеличиваем альфа-прозрачность
} else {
    image_alpha = 1; // Ограничиваем значение, чтобы не превышало 100%
}