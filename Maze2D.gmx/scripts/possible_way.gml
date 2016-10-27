// jalan yang tidak ada halangannya
// return array

// paramaeter : obj skeleton
var obj = argument0; 
var i = 0;
var arrHadap;

if(!place_meeting(obj.x, obj.y-3, obj_dinding)) {
    // atas
    arrHadap[i] = 1;
    i++;
}

if(!place_meeting(obj.x+3, obj.y, obj_dinding)) {
    // kanan
    arrHadap[i] = 2;
    i++;
}

if(!place_meeting(obj.x, obj.y+3, obj_dinding)) {
    // bawah
    arrHadap[i] = 3;
    i++;
}

if(!place_meeting(obj.x-3, obj.y, obj_dinding)) {
    // kiri
    arrHadap[i] = 4;
    i++;
}

return arrHadap;





