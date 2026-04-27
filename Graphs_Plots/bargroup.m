clear all
clc
x=2018:1:2021;
y=[22 15 20 18; 29 22 28 24; 32 29 26 45; 26 21 18 15];
z=bar(x,y);
set(z(1), 'Facecolor','k')
set(z(4), 'Facecolor','g')
grid on
title('Bar graph','FontSize',16);
xlabel('Year', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y=[22 18; 29 24; 32 45; 26 15];
subplot(3,3,1);
bar(y);
title('Bar graph','FontSize',16);
xlabel('Number', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% set specific axis range
subplot(3,3,2);
bar(y);
axis([0, length(y)+1, 12, 48]);
title('Zoom graph','FontSize',16);
xlabel('Number', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% set stacked bar
subplot(3,3,3);
bar(y,'stacked');
title('Stacked graph','FontSize',16);
xlabel('Number', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Multiple data in group
subplot(3,3,4);
x=2018:1:2021;
y=[22 15 20 18; 29 22 28 24; 32 29 26 45; 26 21 18 15];
bar(x,y);
title('Multiple data','FontSize',16);
xlabel('Year', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot specific data from multiple data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% set
subplot(3,3,5);
bar(x,y(:,1));
grid on
title('Specific data','FontSize',16);
xlabel('Year', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,3,6);
z=bar(x,y);
set(z(1), 'Facecolor','r')
title('Changed bar color','FontSize',16);
xlabel('Year', 'FontSize',10);
ylabel('Amplitude', 'FontSize',10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,3,7:9);
barh(x,y);
title('Horizontal Plot','FontSize',16);
xlabel('Amplitude', 'FontSize',10);
ylabel('Year', 'FontSize',10);