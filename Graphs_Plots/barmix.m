x=[12, 15, 13, 11, 14, 17];
barh(x,0.5, 'r','EdgeColor','k','LineWidth',2);
title('Bar graph','FontSize',16);
xlabel('Amplitude', 'FontSize',10);
ylabel('Number', 'FontSize',10);
subplot(3,3,1);
bar(x);
title('Bar graph','FontSize',16);
xlabel('Number', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,3,2);
bar(x);
axis([0, length(x)+1, 10, 19]);
title('Zoom graph','FontSize',16);
xlabel('Number', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,3,3);
bar(x,'red');
title('Color change','FontSize',16);
xlabel('Number', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,3,4);
bar(x, 0.5,'red');
title('Width change','FontSize',16);
xlabel('Number', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,3,5);
bar(x,'red','EdgeColor','b');
title('Edge color change','FontSize',16);
xlabel('Number', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,3,6);
bar(x,'red','EdgeColor','k','LineWidth',2);
title('Edge width change','FontSize',16);
xlabel('Number', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
