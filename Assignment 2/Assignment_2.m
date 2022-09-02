%%LU Decomposition

a=[10^5+9,-5,-4;-5,130,-25;-4,-25,49];
B = [10;0;0];

%factors:
f_21 = a(2,1)/a(1,1)
f_31 = a(3,1)/a(1,1)

[Lower,Upper,P] = lu(a);

%% Answers
D = rref([Lower,B])
Ans = rref([Upper,D(1:3,4)])

aug_matrix = [a,B]
real_Ans = rref(aug_matrix)