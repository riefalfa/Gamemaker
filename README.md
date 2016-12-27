# Gamemaker

Game Descriptions

Name    : Maze 2D
Version : 0.7

Link for Demo : 

Story :

  Diceritakan ada seorang petualang yang berusaha untuk mengambil harta karun 
  di dalam sebuah goa, dimana di dalam goa tersebut banyak rintangan yang 
  sudah menanti sang petualang.
  
  Namun sebelum sang petualang bisa masuk ke dalam goa tersebut, dia harus 
  mendapatkan kunci dikarenakan gua tersebut disegel agar tidak sembarang orang
  bisa masuk ke dalamnya.
  
  Di depan gua itu, berdiri orang tua sebagai juru kunci goa itu. Sang petualang 
  harus mengalahkannya dalam sebuah mini-game (Tic Tac Toe) untuk mendapatkan kunci
  goa daripadanya. 
  
  Tetapi itu semua tidak berakhir begitu saja, di dalam goa terdapat labirin dimana
  banyak sekali musuh dan jebakan sudah menantinya. Apakah sang petualang dapat 
  melewati rintangan demi rintangan untuk mendapatkan harta karun??
  
  
 Fungsi Keyboard :
   - UP    -> Jalan ke atas
   - DOWN  -> Jalan ke bawah
   - LEFT  -> Jalan ke kiri
   - RIGHT -> Jalan ke kanan
 
 
Musuh  :
  
  Sang petualang diberi health sebesar 100 point untuk menyelesaikan labirin.
  Terdapat 3 musuh yang sudah menanti sang petualang diantaranya adalah Tengkorak,
  Laba-laba dan Hantu.
  -  Laba-laba : 
	agresivitas 0.25 (mengejar player dengan probabilitas 0.25)
	jika player terkena musuh ini maka health berkurang 2.

  - Tengkorak : 
	aggresivitas 0.5 (mengejar player dengan probabilitas 0.5)
	jika player terkena musuh ini maka health berkurang 5.

  - Hantu	:
	akan muncul ketika player berhasil mendapatkan kunci dan akan terus mengejar 
	player dengan menggunakan jalur terpendek (algoritma A*). tidak dapat dikalahkan.
	mengurangi health player sebesar 10 jika terkena musuh ini.

  Ketika kunci didapat, maka pintu akan terbuka dan ghost akan muncul meneror player.
  Jika player kehabisan health maka permainan selesai.
  Player harus menyentuh katrol untuk bisa melewati air.

Implementasi Minimax (Update berikutnya) :

    Minimax akan diimplementasikan pada minigame ketika sang petualang bertemu orang tua. 
    Disana sang petualang diharuskan mengalahkan sang juru kunci dalam permainan tic-tac-toe.
    Sang petualang diberi kesempatan 3 kali untuk mengalahkan juru kunci, dan jika dia berhasil
    mengalahkannya maka dia akan diberi kunci untuk membuka segel dari goa dimana harta karun terletak.
    
    
    
