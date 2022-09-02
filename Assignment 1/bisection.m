x=linspace(-2,2,101);
y=-2*x.^6-1.6*x.^4 + 12*x + 1
plot(x,y,"r--")


%Plot tiles and axis settings
title("Q4 function Plot", 'fontsize', 15)
xlabel('x', 'fontsize', 11);   % axis label
ylabel('f(x)', 'fontsize', 11);   % axil label 
