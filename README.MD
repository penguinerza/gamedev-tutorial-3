# README

## Tutorial 5

menambahkan animasi dari dan sound dari beberapa sumber berikut

-   animasi: https://luizmelo.itch.io/monsters-creatures-fantasy
-   sfx: https://freesound.org/people/plasterbrain/sounds/394466/
-   bgm: https://www.youtube.com/watch?v=wuF7IUjeEyU

### Objek beranimasi

Untuk objek yang beranimasi kali ini sama dengan saat membuat karakter. membuat node, collider, dan pasang animated sprite. Tidak tau cara mengembalikan state animasi ke idle setelah terkena hit.

### SFX

SFX yang diimplementasi adalah SFX yang aktif ketika monster terkena karakter. Diset tidak loop supaya tidak selamanya aktif

### BGM

BGM dipasang sebagai child dari root node. Diset autoplay supaya dapat langsung aktif ketika scene tersebut dimainkan.

## Tutorial 3

Fitur yang diimplementasi adalah fitur Double jump, Running dan Crouching.

### Double jump

Double jump adalah ability karakter supaya dapat melompat di udara sekali. Implementasi double jump pada tutorial ini memanfaatkan variabel `did_double_jump`. Default valuenya adalah `false`. Diubah menjadi `true` ketika melakukan command jump saat di udara. Valuenya dikembalikan ke `false` ketika `is_on_floor()`.

#### Running

Running adalah ability karakter supaya dapat bergerak lebih cepat. Berbeda dengan Dashing, karakter bergerak selama masih menekan tombol shift atau selama belum berhenti. Pada tutorial ini, Running diimplementasi dengan tombol shift atau tekan kiri/kanan secara double. Implementasi double tap memanfaatkan dictionary dengan key string dan value waktu. Mengecek apakah waktu terakhir kali tombol ditekan masih dalam batas waktu atau tidak untuk mengaktifkan double tap.

### Crouching

Tekan bawah, ubah sprite karakter ke sprite jongkok, kurangi multiplier speed karakter. Pada tutorial ini ukuran collision body belum berubah.
