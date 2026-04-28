% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 3d – <Hitung f^-1(x) volume pembelian x yang dihasilkan>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 27 April 2026
% ========================================================= %

clc; clear; close all;

% Parameter personalisasi
N = 30; a = 3; b = 0; K = 4; theta0 = 90; alpha_lr = 0.001;

% Definisikan simbolik x
syms x

% Fungsi f(x) = K*x + (a+b)
f = K*x + (a + b);

% 1. Mencari invers secara simbolik
f_inv = finverse(f);
fprintf('Invers fungsi f^-1(x) adalah: %s\n', char(f_inv));

% 2. Menghitung pendapatan total: (K*100 + a + b)
pendapatan = K*100 + a + b;

% 3. Mencari volume pembelian (x) saat f(x) = pendapatan
x_sol = solve(f == pendapatan, x);

fprintf('Pendapatan total yang ditargetkan: %d\n', double(pendapatan));
fprintf('Volume pembelian (x) yang diperlukan adalah: %d\n', double(x_sol));
