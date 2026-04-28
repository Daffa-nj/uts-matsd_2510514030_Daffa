% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 5 – <Limit kekontinuan>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 28 April 2026
% ========================================================= %


%==================================================
% Bagian 5.1 (b) verifikasi limit menggunakan syms
%==================================================
% Parameter personalisasi
N = 30; a = 3; b = 0; K = 4; theta0 = 90; alpha_lr = 0.001;

% Definisikan simbolik x
syms x

% Definisi limit
L1 = limit((x^2 - 16)/(x - 4), x, 4);
L2 = limit((sqrt(x + 25) - 5)/x, x, 0);
L3 = limit((5*x^3 + 7)/(x^3 - x + 4), x, inf);

% Tampilkan hasil
disp(['L1 = ', char(L1)]);
disp(['L2 = ', char(L2)]);
disp(['L3 = ', char(L3)]);
