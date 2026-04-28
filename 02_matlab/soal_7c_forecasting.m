% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 7 – <Forecasting Penjualan dengan barisan, Deret, dan Notasi Sigma>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 28 April 2026
% ========================================================= %

clc; clear; close all;

% ================================================
% Bagian 7.2 (c) : Verifikasi T1 dan T2
% ================================================
% Parameter
a = 3;
K = 4;
n = 1:12;

% Generasi data berdasarkan rumus Sn di soal
S = 50 + (K * n) + ((-1).^n) * (a + 1);

% Perhitungan Sigma
T1 = sum(S);
T2 = sum(S.^2);

% Menampilkan Hasil Verifikasi
fprintf('\n=== VERIFIKASI HASIL SIGMA (7.2c) ===\n');
fprintf('Total Penjualan (T1)       = %d\n', T1);
fprintf('Sum of Squares (T2)        = %d\n', T2);

% Tambahan: Cek selisih dengan perhitungan manual bagian (b)
manual_T1 = 912;
manual_T2 = 71984;

if T1 == manual_T1 && T2 == manual_T2
    fprintf('STATUS: Verifikasi Berhasil! (Sesuai dengan hitungan manual)\n');
else
    fprintf('STATUS: Ada perbedaan dengan hitungan manual, mohon cek kembali.\n');
end
