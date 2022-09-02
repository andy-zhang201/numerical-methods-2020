integrals=[];
n=1;
e_t = 1;
e_t_array = [];

% Loop through values of n, the number of segments
while e_t > 0.1
%     Create n+1 equally spaced points which define n segments.
    x=linspace(0,3*pi,n+1);
%     Evaluate f(x) at each x point.
    y=sin(x)
    
%     Set initial sum value
    sum = y(1);
    
%     If only 1 segment exists, do not sum over intermediate terms (since they do not exist)
    if n >=2
        
%         Iterates over the intermediate points in x to sum them.
%         Intermediate points are found at the beginning of every nth
%         segment, starting at n=2.
        for j=2:n
            sum = sum + 2*y(j);
        end
    end
%     Add the final value in the integral.
    sum = sum + y(n+1);

%     Calculate final integral    
    int = (3*pi/n)*sum/2;
    
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