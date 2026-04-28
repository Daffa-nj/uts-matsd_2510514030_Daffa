% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 2f – <Hitung norma error frobenius dan invers matriks>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 26 April 2026
% ========================================================= %


%% 1. Definisi Matriks
% Matriks P (Blok Piksel Asli)
P = [96.06 122.25 269.34;
      128.52 10.9 80;
      94.75 128.6 260.65];

% Matriks E (Hasil Enkripsi A * P)
E = [480 500 1140;
     520 105 400;
     440 545 1060];

%% 2. Visualisasi dengan Subplot
figure('Name', 'Visualisasi Enkripsi Citra');

% Menampilkan Blok Piksel Asli
subplot(1, 2, 1);
imshow(P, []);
title('Blok Piksel Asli (P)');
colorbar; % Menampilkan skala warna untuk melihat intensitas piksel

% Menampilkan Blok Piksel Hasil Enkripsi
subplot(1, 2, 2);
imshow(E, []);
title('Blok Piksel Terenkripsi (E)');
colorbar;

%% 3. Penjelasan
% Fungsi imshow (matriks, []) otomatis melakukan scaling
% intensitas warna berdasarkan nilai minimum dan maksimum matriks.
% Terlihat bahwa nilai pada E > P,
% sehingga citra hasil enkripsi akan tampak jauh lebih terang
% atau memiliki distribusi warna yang berbeda total.
