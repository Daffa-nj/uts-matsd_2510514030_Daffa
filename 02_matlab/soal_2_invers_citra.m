% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 2d – <Hitung norma error frobenius dan invers matriks>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 26 April 2026
% ========================================================= %

%% 1. Definisi Matriks A (Parameter a=3, b=0)
A = [4 0 2;
     1 5 0;
     0 1 6];
n = size(A, 1);
M = zeros(n); % Inisialisasi matriks minor
C = zeros(n); % Inisialisasi matriks kofaktor
%% 2. Perhitungan Matriks Minor & Kofaktor (Nested Loop)
for i = 1:n
    for j = 1:n
        % Membuat sub-matriks dengan menghapus baris i dan kolom j
        sub = A;
        sub(i,:) = [];
        sub(:,j) = [];
        
        % a. Hitung Minor: determinan sub-matriks
        M(i,j) = det(sub);
        
        % b. Hitung Kofaktor: (-1)^(i+j) * Minor
        C(i,j) = ((-1)^(i+j)) * M(i,j);
    end
end
%% 3. Matriks Adjoin dan Invers Manual
AdjA = C';                  % Adjoin adalah transpose dari kofaktor
detA = det(A);              % Menghitung determinan A
A_inv_manual = AdjA / detA; % Invers manual: Adj(A)/det(A)

%% 4. Verifikasi dengan Fungsi Built-in
A_inv_builtin = inv(A);
%% 5. Hitung Norma Error Frobenius
error_fro = norm(A_inv_manual - A_inv_builtin, 'fro');
%% 6. Menampilkan Hasil 
fprintf('==============================================\n');
fprintf('       HASIL VERIFIKASI INVERS MATRIKS        \n');
fprintf('==============================================\n');
fprintf('Determinan A      : %.2f\n', detA);
fprintf('Error Frobenius   : %.2e\n', error_fro);
fprintf('----------------------------------------------\n');
if error_fro < 1e-10
    disp('KESIMPULAN: Verifikasi BERHASIL.');
    disp('Hasil perhitungan manual identik dengan inv(A) MATLAB.');
else
    disp('KESIMPULAN: Terdapat perbedaan hasil.');
end
fprintf('\n1. Matriks Minor (M):\n');
disp(M);
fprintf('2. Matriks Kofaktor (C):\n');
disp(C);
fprintf('3. Matriks Invers Manual (A_inv_manual):\n');
disp(A_inv_manual);
