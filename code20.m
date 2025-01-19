%Q 20 :
% plot sinx cosx on the same plot using a color, marker and a line style

x = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);

plot(x,y1, '-*c', x,y2, '-.om')
