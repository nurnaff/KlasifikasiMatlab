%membaca data project yang akan ditentukan green atau red
A=xlsread('Audit.xls','A2:J53400');
%membaca data nilai centroid cluster green and red
C=xlsread('centroid_R.xls','B2:K3');
%membaca ukuran data
[baris, kolom]=size(A);
%proses menghitung euclidian distance setiap baris data dengan nilai
%centroid cluster 1 dan 2
for i=1:baris
   cluster1=sqrt(((C(1,2)-A(i,2))^2)+((C(1,3)-A(i,3))^2)+((C(1,4)-A(i,4))^2)+((C(1,5)-A(i,5))^2)+((C(1,6)-A(i,6))^2)+((C(1,7)-A(i,7))^2)+((C(1,8)-A(i,8))^2)+((C(1,9)-A(i,9))^2));
   cluster2=sqrt(((C(2,2)-A(i,2))^2)+((C(2,3)-A(i,3))^2)+((C(2,4)-A(i,4))^2)+((C(2,5)-A(i,5))^2)+((C(2,6)-A(i,6))^2)+((C(2,7)-A(i,7))^2)+((C(2,8)-A(i,8))^2)+((C(2,9)-A(i,9))^2));
   if(cluster1>cluster2)
     H(i)="Kelas 2";
        else
     H(i)="Kelas 1";
   end
end
H=H';
xlswrite('Hasil.xls',H);