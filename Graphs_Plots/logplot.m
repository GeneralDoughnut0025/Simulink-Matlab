% Define earthquake magnitude and energy data
magnitude = [1, 2, 3, 4, 5, 6, 7, 8, 9];
energy = [6.3e5, 2e7, 6.3e8, 2e10, 6.3e11, 2e13, 6.3e14, 2e16, 6.3e17];

% Create linear graph
subplot(1,2,1); 
plot(magnitude, energy, 'o-', 'LineWidth', 2);
grid on;
title('Linear Scale');
xlabel('Magnitude');
ylabel('Energy (joules)');

% Create logarithmic graph
subplot(1,2,2);
loglog(magnitude, energy, 'o-', 'LineWidth', 2);
grid on;
title('Logarithmic Scale');
xlabel('Magnitude');
ylabel('Energy (joules)');

% Adjust subplot layout
sgtitle('Comparison of Linear and Logarithmic Graphs'); % Changed suptitle to sgtitle
set(gcf, 'Position', [100 100 1000 400]);