// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_zoom(_cam,_w,_h,_str){
	camera_set_view_size(_cam,lerp(camera_get_view_width(_cam),_w,_str),lerp(camera_get_view_height(_cam),_h,_str));
}