// В объекте Obj_umb_handle, например, в его событиях Step:

// Проверяем, отпущена ли левая кнопка мыши
if (mouse_check_button_released(mb_left)) {
    // Проверяем, есть ли столкновение с объектом Obj_umb_osn
    if (collision_rectangle(x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2, Obj_umb_handle, false, true)) {
        // Удаляем текущий объект
        instance_destroy(Obj_umb_handle);
        
        // Создаём новый объект в том же месте
		
        instance_create_layer(992,192,"instances",Obj_umb_handle)
		Obj_umb_handle.held = false
		
    }
}

