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