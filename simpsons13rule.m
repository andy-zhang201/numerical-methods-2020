%Uses 1/3 rule to calculate integral between x_val at idx_lower to
%idx_upper
%x_val must have an odd number of elements (for even interval count)
function integral = simpsons13rule(x_val,y_val,idx_lower,idx_upper)
sum=y_val(idx_lower)
n=idx_upper-idx_lower;
h=(x_val(idx_upper)-x_val(idx_lower))/n;
for i=idx_lower:idx_upper-1:2
    sum=sum+4*y_val(i)+2*y_val(i+1)
end
integral = h*sum/3;
end