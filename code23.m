% plot sinx, cosx, 2*sinx*cosx, sinx/cosx in one window using subplot command

x = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);
y3 = 2*sin(x).*cos(x);
y4 = sin(x)./cos(x);

subplot(2,2,1)
plot(x,y1)

subplot(2,2,2)
plot(x,y2)

subplot(2,2,3)
plot(x,y3)

subplot(2,2,4)
plot(x,y4)
