%membaca data project yang akan ditentukan green atau red
A=xlsread('data_dtw.xls','B2:N69');
%membaca data nilai centroid cluster green and red
C=xlsread('centroid_dtw.xls','B2:N3');
%membaca ukuran data
[baris, kolom]=size(A);
%proses menghitung manhatt setiap baris data dengan centroid cluster 1 dan 2
for i=1:baris
    for j=1:kolom
        red=mandist(A(i,j),C(1,j));
        green=mandist(A(i,j),C(2,j));
    end
   if(red<green)
     H(i)="red";
        else
     H(i)="green";
   end
end
H=H';
xlswrite('Hasil.xls',H);