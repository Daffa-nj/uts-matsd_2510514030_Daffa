% ========================================================= %
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 3b – <Himpunan dan operasi>
% ---------------------------------------------------------
% Nama   : Daffa Nadhif Javier
% NIM    : 2510514030
% Parameter: N=30, a=3, b=0, K=4, theta0 = 90 derajat, alpha = 0.001
% Tanggal: 26 April 2026
% ========================================================= %

% Deklarasi Parameter
N = 30;

% 1. Definisi Himpunan
U = N:(N+20);
A = [N, N+2, N+4, N+7, N+10, N+13, N+15];
B = [N+3, N+5, N+7, N+10, N+12, N+18];
C = [N+1, N+7, N+10, N+11, N+17, N+20];

% 2. Operasi Himpunan MATLAB sesuai sintaks yang diminta
A_union_B_union_C = union(union(A, B), C);
A_intersect_B_intersect_C = intersect(intersect(A, B), C);

C_prime = setdiff(U, C);
A_union_B = union(A, B);
AUB_intersect_Cprime = intersect(A_union_B, C_prime);

A_symdiff_B = setxor(A, B); % setxor adalah command symmetric difference

% 3. Output
disp('--- Verifikasi Soal 3.a ---')
disp(['A U B U C         : ', num2str(A_union_B_union_C)])
disp(['A ∩ B ∩ C         : ', num2str(A_intersect_B_intersect_C)])
disp(['(A U B) ∩ C''     : ', num2str(AUB_intersect_Cprime)])
disp(['A ⊕ B             : ', num2str(A_symdiff_B)])
