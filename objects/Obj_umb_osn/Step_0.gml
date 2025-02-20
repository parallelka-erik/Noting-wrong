// если нажата левая кнопка мыши, курсор над предметом и нет объекта Obj_but_work_1
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && instance_number(Obj_but_work_1) == 0) {
    held = !held; // переключаем состояние (если был поднят - отпускаем, если был отпущен - поднимаем)

    if (held) {
        offset_x = x - mouse_x; // сохраняем смещение от курсора
        offset_y = y - mouse_y;

        // меняем спрайт, когда предмет взят
        depth = -10000;
        Obj_hand_right.image_index = 1;
        image_index = 1; // замените spr_held на имя вашего спрайта для "взятого" состояния
    } else {
        // меняем спрайт, когда предмет отпускается
        depth = 0;
        Obj_hand_right.image_index = 0;
        image_index = 0; // замените spr_default на имя вашего исходного спрайта

        // проверяем, сталкиваются ли оба объекта с нужными объектами
        if (place_meeting(x, y, Obj_contur_osn) && place_meeting(Obj_umb_handle.x, Obj_umb_handle.y, Obj_con_handle)) {
            // проверяем, есть ли уже объект Obj_but_work_1
            if (instance_number(Obj_but_work_1) == 0) {
                instance_create_layer(876, 351, "instances_work", Obj_but_work_1);
            }
        }
    }
}

// если предмет удерживается, перемещаем его с учетом смещения
if (held) {
    x = mouse_x + offset_x;
    y = mouse_y + offset_y;
}
