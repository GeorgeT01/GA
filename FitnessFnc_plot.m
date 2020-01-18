fplot(@(x) (0.5.*x - 1.4).*cos(0.5.*pi.*x + 1.1), [-9  9]);
xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
% figure
% fplot(@(x) -1.*((0.7.*x - 1.7).*cos(0.5.*pi.*x + 1.5)), [-5  5]);
% xL = xlim;
% yL = ylim;
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis


% x = linspace(-5, 5);
% y = 1.*((0.7.*x - 1.7).*cos(0.5.*pi.*x + 1.5));
% idxmin = find(y == max(y));
% idxmax = find(y == min(y));
% plot(x,y,'-*','MarkerIndices',[idxmin idxmax])
% %plot(x,y,'-*','MarkerIndices',1:10:length(y))