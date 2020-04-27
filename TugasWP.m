% Studi Kasus: Mencari siswa terbaik di SMA 9 Yogyakarta
% 8 alternatif siswa : Adela, Devita, Sukma, Lisa, Iqbal, Langit, Febi,Idam
% Kriteria : Nilai Rata-rata UN, Nilai Rata-rata Rapot Semester 1- 5, Prestasi Akademik, Prestasi
% Non Akademik, Ekstrakurikuler, Sikap, Presensi, Pelanggaran

%Data       C1  C2          C3          C4      C5          C6      C7   C8      C9
%Adela		90	95			20			10		4.00	    4.00	895  1          3.50
%Devita		91	95			20			10		4.00	    4.00	895	 1        4.00
%Sukma		89	92			50			30		4.00	    4.00	894	 1        3.50
%Lisa		93	93			30			10		3.00	    4.00	894	 1           3.45
%Iqbal		88	90			60			10		3.00	    4.00	892	 1        3.67
%Langit		85	85			20			10		3.00	    4.00	900	 2        3.20
%Febi		84	86			20			10		3.00	    4.00	900	 1           3.35
%Idam		87	87			30			50		4.00	    4.00	895	 1           3.87
%Kevin      87  93        30    10      3.50        4.00    893  1    3.95

% Kriteria      Sifat       Bobot
%    C1         max 1        4
%    C2         max 1        5
%    C3         max 1        3
%    C4         max 1        3
%    C5         max 1        2
%    C6         max 1        3
%    C7         max 1        2
%    C8         min 0        4
%    C9         max 1        3

m = input('Masukkan jumlah alternatif : ');
n = input('Masukkan jumlah kriteria : ');

for i=1:m
   for j=1:n
      x(i,j) = input('Masukkan rating kecocokan alternatif dengan kriteria : '); 
   end
end

x=reshape(x,m,n);

for j=1:n
   k(j) = input('Masukkan atribut kriteria : ');
   w(j) = input('Masukkan bobot tiap kriteria : ');
end

[m n]=size(x);
w=w./sum(w);

for j=1:n
if k(j) == 0
       w(j) = -1*w(j);
end
end

for i=1:m
    S(i) = prod(x(i,:).^w);
end

V=S/sum(S);
disp(V);
