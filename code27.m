x = input("Enter 1st sequence : ");
y = input("Enter 2nd sequence : ");

L = length(x);
n = 0:L-1;
subplot(2,2,1)
stem(n,x)
title('x(n)');
xlabel('n--->');
ylabel('Amp--->');


M = length(y);
h = 0:M-1;
subplot(2,2,2)
stem(h,y)
title('h(n)');
xlabel('n--->');
ylabel('Amp--->');

z = conv(x,y)
p = length(z);
c = 0:p-1;
subplot(2,2,3)
stem(c,z)
title('y(n)');
xlabel('n--->');
ylabel('Amp--->');
