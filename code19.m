%Q 19 :
% plot more than one curve sin(x) and cos(x) on the same plot

x = 0 : 2*pi/100 : 2*pi;
y1 = sin(x);
y2 = cos(x);
plot(x, y1, x, y2)
