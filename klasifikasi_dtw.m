%membaca data project yang akan ditentukan green atau red
A=xlsread('data_dtw.xls','B2:N69');
%membaca data nilai centroid cluster green and red
C=xlsread('centroid_fuzzy.xls','B2:N3');
%membaca ukuran data
[baris, kolom]=size(A);
%proses menghitung dtw setiap baris data dengan nilai centroid cluster 1 dan 2
for i=1:baris
    for j=1:kolom
        jarak1(1,j)=abs(C(1,j)-A(i,j));
        jarak2(2,j)=abs(C(2,j)-A(i,j));
        red=jarak1(1,j)+min(dtw(A(i,j),C(1,j)));
        green=jarak2(2,j)+min(dtw(A(i,j),C(2,j)));
    end
   if(red>green)
     H(i)="green";
        else
     H(i)="red";
   end
end
H=H';
xlswrite('Hasil.xls',H);