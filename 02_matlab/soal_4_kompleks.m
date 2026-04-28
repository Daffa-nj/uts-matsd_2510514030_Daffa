% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 4b – <Hitung operator penjumlahan, pengurangan, perkalian, pembagian>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 28 April 2026
% ========================================================= %

% 1. Definisi Parameter dan Fasor
a = 3;
b = 0;

z1 = (a + 2) + (b + 1)*1i; % Hasilnya 5 + i
z2 = (b + 1) - (a + 2)*1i; % Hasilnya 1 - 5i

% 4a. Konversi ke Bentuk Kutub (Verifikasi)
[theta1_rad, r1] = cart2pol(real(z1), imag(z1));
theta1_deg = rad2deg(theta1_rad);

[theta2_rad, r2] = cart2pol(real(z2), imag(z2));
theta2_deg = rad2deg(theta2_rad);

% 4b. Operasi Aritmatika
hasil_tambah = z1 + z2;
hasil_kali   = z1 * z2;
hasil_bagi   = z1 / z2;
hasil_mod_selisih = abs(z1 - z2);

fprintf('=== VERIFIKASI SOAL 4b (Operasi) ===\n');

% Memisahkan real dan imag agar bagian i tidak hilang, dan gunakan %+ untuk tanda plus/minus otomatis
fprintf('z1 + z2   = %.0f %+.0fi\n', real(hasil_tambah), imag(hasil_tambah));
fprintf('z1 * z2   = %.0f %+.0fi\n', real(hasil_kali), imag(hasil_kali));
fprintf('z1 / z2   = %.0f %+.0fi\n', real(hasil_bagi), imag(hasil_bagi));

% Menggunakan %.4f agar angka desimal di belakang koma tidak dibulatkan
fprintf('|z1 - z2| = %.4f\n', hasil_mod_selisih);
