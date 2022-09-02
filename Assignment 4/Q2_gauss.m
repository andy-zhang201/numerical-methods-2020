%Uses 1D gaussian quadrature method to find integral of sinx
integrals=[];
n=1;
e_t = 1;
e_t_array = [];

b= 3*pi;
a= 0;

% Create stacks for weights and gauss points.
coefs = [2,1,1,5/9,8/9,5/9,(18+sqrt(30))/36,(18+sqrt(30))/36,(18-sqrt(30))/36,(18-sqrt(30))/36]
points = [0,-1/sqrt(3),1/sqrt(3),-sqrt(3/5),0,sqrt(3/5),0.339981,-0.339981,0.861136,-0.861136]

% Loop through values of n, the number of segments
while e_t > 0.1
    %Gather relevant points and weights from stack
    cur_coefs = coefs(1:n)
    cur_points = points(1:n)
    
%     Pop used coefficients from the front of stack
    coefs = coefs(n+1:end)
    points = points(n+1:end)
    
%     Calculate integral
    sum = 0;
    
    for i=1:n
%         Find transformed x
        x=(b+a+(b-a)*cur_points(i))/2
%         Find sin(x) and Multiply by weight
        sum = sum + cur_coefs(i)*(sin(x))
    end
    
%     Find final integral
    int = ((b-a)/2)*sum;
    
%     Calculate true error from int
    e_t = abs((2-int))/2;
    
%     Concatenate int and e_t to arrays
    integrals = [integrals,int];
    e_t_array = [e_t_array,e_t];
    
%     Increment n
    n = n+1;
end

% decrement n by 1 to obtain true number of segments used.
num_segs = n-1;