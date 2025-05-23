
var _h = display_get_gui_height();
var _w = display_get_gui_width();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_cartoon_relief_regular)



draw_sprite_ext(spr_rectangle,1,_w/2,_h/10,3,1,0,c_white,1)

draw_sprite_ext(spr_tank_blue,1,_w/2-192,_h/10,0.5,0.5,90,c_white,1)
draw_sprite_ext(spr_tank_red,1,_w/2+192,_h/10,0.5,0.5,270,c_white,1)

draw_text(_w/2-50, _h/10, "TESTE"); 


draw_set_halign(-1);
draw_set_valign(-1); 

