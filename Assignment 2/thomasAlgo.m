N=47;
a=[-5,8,0,0;5,-(8+10*N),8,0;0,10*N,-34,10;0,0,15,-10]
b=[-3;0;0;-6];
r=[];
x=[];
%LU
[Lower,Upper] = lu(a);

%Forward Substitution:
r(1)=b(1);
for i=2:4
    r(i)=b(i)-Lower(i,i-1)*r(i-1);
end
    
%Back Sub:
x(4)=r(4)/Upper(4,4);

for j=3:-1:1
    x(j)=(r(j)-Upper(j,j+1)*x(j+1))/Upper(j,j);
    
end
x
