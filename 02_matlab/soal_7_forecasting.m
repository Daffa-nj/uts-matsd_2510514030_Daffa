% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 7 – <Forecasting Penjualan dengan barisan, Deret, dan Notasi Sigma>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 28 April 2026
% ========================================================= %


%================================================
% Bagian 7.4 (e)  : Forecasting 6 Bulan ke Depan
%================================================

clc; clear; close all;

% Definisi Parameter Personalisasi
a = 3;
K = 4;

% Data Historis (Dihitung dari rumus Sn)
t = 1:12;
S = 50 + (K .* t) + ((-1).^t) .* (a + 1); 

% Tampilkan data S ke Command Window (opsional, untuk memastikan angkanya pas)
disp('Data Penjualan Historis S_n:');
disp(S);

% Regresi Linier
p = polyfit(t, S, 1);
slope = p(1);
intercept = p(2);
trend_historis = polyval(p, t);

% Prediksi Bulan 13-18
t_pred = 13:18;
S_pred = polyval(p, t_pred);

% Plotting
figure;
plot(t, S, 'b.-', 'MarkerSize', 15, 'LineWidth', 1.5); hold on;
plot(t, trend_historis, 'r--', 'LineWidth', 1.5);
plot(t_pred, S_pred, 'g^--', 'MarkerSize', 8, 'LineWidth', 1.5, 'MarkerFaceColor', 'g');
grid on;
title('Forecasting Penjualan Linear vs Data Historis');
xlabel('Bulan (n)'); ylabel('Penjualan (S_n)');
legend('Data Historis', 'Garis Tren Linier', 'Prediksi 6 Bulan (13-18)', 'Location', 'northwest');

% f) Menghitung MAE
residual = S - trend_historis;
MAE = mean(abs(residual));
fprintf('Mean Absolute Error (MAE): %.4f\n', MAE);
