/*
    dipanggil oleh obj monster untuk memutuskan arah mengejar
    
    return arah yang diambil berdasarkan posisi karakter
    1 = atas , 2 = kanan , 3 = bawah , 4 = kiri
*/

var obj = argument0; //

var charx = obj_tokoh.x;
var chary = obj_tokoh.y;
var absDx = abs(obj.x - charx);
var absDy = abs(obj.y - chary);

// save arah alternatif untuk mengejar, berdasarkan prioritas
var arrAlternatifWay;

var i = 0;
var arahHoriz=-1;
var arahVer=-1;

if (obj.x > charx) {
    // monster ada di kanan karakter, bergerak ke kiri
    arahHoriz = 4;
} else {
    // gerak ke kanan
    arahHoriz = 2;
}

if (obj.y > chary) {
   // monster ada dibawah, gerak ke atas
   arahVer = 1; 
} else { 
   // gerak ke bawah
   arahVer = 3; 
}

if (absDx > absDy) {
    // x lebih jauh daripada y
    // perkecil jarak x
    show_debug_message("x lebih jauh ambil arah horizontal="+string(arahHoriz));
    arrAlternatifWay[i] = arahHoriz; 
    i++;
    arrAlternatifWay[i] = arahVer;
    i++;
}else {
    show_debug_message("y lebih jauh ambil arah vertikal="+string(arahVer));
    arrAlternatifWay[i] = arahVer;    
    i++; 
    arrAlternatifWay[i] = arahHoriz;   
    i++;    

}

// cari arah yg mungkin yg tidak ada tembok
// kalau semua alternatif arah pengejaran ada tembok, ambil yg pertama yg tersedia
var arrArahMungkin = possible_way(obj);
var jumArahMungkin = array_length_1d(arrArahMungkin);

//cari arah random pertama yang tersedia
var ketemu = false;
var arahKetemu = -1;

var j = 0;
var ketemu = false;
while (j<2 && !ketemu) {
    var k = 0;
    while (k<jumArahMungkin && !ketemu) {
        if  arrAlternatifWay[j]==arrArahMungkin[k] {
            ketemu = true;
            arahKetemu = arrAlternatifWay[j];
             
        }
        k++;
    }  
    j++; 
}

if (ketemu) {   
  return arahKetemu;
} else 
{
  //arah pengejaran tidak tersedia, ambil saja arah alternatif yg ada  
  return arrArahMungkin[0];
}
