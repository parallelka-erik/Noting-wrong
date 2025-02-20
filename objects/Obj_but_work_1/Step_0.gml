// если нажата левая кнопка мыши и курсор над объектом Obj_but_work_1
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, Obj_but_work_1)) {
    // создаём объект Obj_work_1 на слое "instances_work"
    instance_create_layer(0, 0, "instances_work", Obj_work_1);
    
    // удаляем объект Obj_but_work_1
    instance_destroy();
}
