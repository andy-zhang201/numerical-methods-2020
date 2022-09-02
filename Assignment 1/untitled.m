%Plotting the data collected
strain = [0 0.000159 0.000303 0.000467 0.000601 0.000745 0.00096 0.001094 0.001628 0.001918 ]
stress = [0 1.726385 3.605328 5.874747 7.747211 8.904236 10.71594 11.71415 11.40861 10.84016]
plot(strain,stress,"ro")
hold on

%Plotting the curve fit
X = linspace(0,0.001918,100)
f_c = -2.029*10^-1+1.552*10^4*X-4.823*10^6*X.^2
plot(X,f_c,"k-.")

%Plot tiles and axis settings
axis([0 0.002 0 15])
title("Low-strength concrete", 'fontsize', 15)
xlabel('Strain (%)', 'fontsize', 11);   % axis label
ylabel('Stress (MPa)', 'fontsize', 11);   % axil label 

%Legend
legend("experimental","analytical")
hold off