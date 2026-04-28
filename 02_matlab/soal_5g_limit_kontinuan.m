% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 5 – <Limit kekontinuan>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 28 April 2026
% ========================================================= %


%=======================================================================
% Bagian 5.4 (g) Plot C(x) yang kontinu di MATLAB pada interval [0, 2K] 
%=======================================================================
% Parameter personalisasi
N = 30; a = 3; b = 0; K = 4; theta0 = 90; alpha_lr = 0.001;


% Definisikan rentang x
x_interval = [0, 8];

% Gunakan anonymous function dengan logika (piecewise)
% x < 4 menggunakan x + 4 (karena (x^2-16)/(x-4) disederhanakan)
% x >= 4 menggunakan 3x - 4
C = @(x) (x + 4).*(x < 4) + (3*x - 4).*(x >= 4);

figure;
fplot(C, x_interval, 'LineWidth', 2);
hold on; grid on;

% Tambahkan garis vertikal tipis di x = K (x = 4)
xline(4, 'k--', 'LineWidth', 1);

% Tambahkan titik sambungan
plot(4, 8, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

title('Fungsi Biaya Distribusi Piecewise C(x)');
xlabel('x (Unit Produk)');
ylabel('C(x) (Biaya)');
legend('Fungsi Biaya', 'Titik Sambungan x=K', 'Location', 'northwest');
