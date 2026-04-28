% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 4e – <pembuktian di bagian d>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 28 April 2026
% ========================================================= %


% Definisikan ketiga akar dari w = 8i
w0 = sqrt(3) + 1i;
w1 = -sqrt(3) + 1i;
w2 = -2i;

% Tutup poligon kembali ke titik awal
roots = [w0, w1, w2, w0];

figure;
hold on; grid on; axis equal;

% Gambar lingkaran jari-jari 2
th = linspace(0, 2*pi, 100);
plot(2*cos(th), 2*sin(th), 'k--', 'LineWidth', 1);

% Plot garis segitiga
plot(real(roots), imag(roots), 'b-', 'LineWidth', 1.5);

% Plot titik akar dengan compass (panah fasor)
compass(real(roots(1:3)), imag(roots(1:3)), 'r');

title('Plot Akar Pangkat Tiga w = 8i di Bidang Argand');
xlabel('Real'); ylabel('Imajiner');
