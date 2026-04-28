% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 6 – <Turunan gradien escent>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 28 April 2026
% ========================================================= %


%==========================================================================================================
% Bagian 6.2 (e)  : tulis script yang menjalankan 500 iterasi Gradient Descent dan plot grafik konvergensi
%==========================================================================================================
% Parameter personalisasi

% Parameter
alpha = 0.001;
iter = 500;
x = zeros(1, iter+1);
pi_val = zeros(1, iter+1);
x(1) = 1; % x0

% Fungsi Anonim
pi_func = @(x) -4*x.^3 + 20*x.^2 + 100*x - 160;
pi_deriv = @(x) -12*x.^2 + 40*x + 100;

% Gradient Descent Loop
for k = 1:iter
    pi_val(k) = pi_func(x(k));
    x(k+1) = x(k) + alpha * pi_deriv(x(k));
end
pi_val(iter+1) = pi_func(x(iter+1));

% Solusi Analitik
x_opt = 5; 

% Plot Konvergensi
figure;
subplot(1,2,1);
plot(0:iter, pi_val, 'b-', 'LineWidth', 2);
title('Kurva Konvergensi Profit \pi(x_k) vs k');
xlabel('Iterasi (k)'); ylabel('Profit \pi(x_k)');
grid on;

% Plot di Kurva Profit
subplot(1,2,2);
x_plot = linspace(-2, 7, 100);
plot(x_plot, pi_func(x_plot), 'k-', 'LineWidth', 1.5); hold on;
plot(x(1), pi_func(x(1)), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % x0
plot(x(end), pi_func(x(end)), 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g'); % x* GD
plot(x_opt, pi_func(x_opt), 'bx', 'MarkerSize', 10, 'LineWidth', 2); % x* Analitik
legend('\pi(x)', 'Awal x_0', 'Akhir GD', 'Optimum Global Analitik', 'Location', 'southwest');
title('Lintasan Gradient Descent');
xlabel('Harga (x)'); ylabel('Profit \pi(x)');
grid on;

fprintf('Nilai x akhir dari GD: %.6f\n', x(end));
