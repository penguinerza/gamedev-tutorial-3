# README

## Tutorial 3

Fitur yang diimplementasi adalah fitur Double jump, Running dan Crouching.

### Double jump

Double jump adalah ability karakter supaya dapat melompat di udara sekali. Implementasi double jump pada tutorial ini memanfaatkan variabel `did_double_jump`. Default valuenya adalah `false`. Diubah menjadi `true` ketika melakukan command jump saat di udara. Valuenya dikembalikan ke `false` ketika `is_on_floor()`.

#### Running

Running adalah ability karakter supaya dapat bergerak lebih cepat. Berbeda dengan Dashing, karakter bergerak selama masih menekan tombol shift atau selama belum berhenti. Pada tutorial ini, Running diimplementasi dengan tombol shift atau tekan kiri/kanan secara double. Implementasi double tap memanfaatkan dictionary dengan key string dan value waktu. Mengecek apakah waktu terakhir kali tombol ditekan masih dalam batas waktu atau tidak untuk mengaktifkan double tap.

### Crouching

Tekan bawah, ubah sprite karakter ke sprite jongkok, kurangi multiplier speed karakter. Pada tutorial ini ukuran collision body belum berubah.
