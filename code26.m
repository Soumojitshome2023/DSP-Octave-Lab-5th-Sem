n = -10: 10;
N = 5;
u1 = n>=0;
u2 = n-N>=0;
x1 = u1-u2;
subplot(2,2,1)
stem(n, x1)
xlabel('n--->');
ylabel('amp--->');
title('x(n)');

x2 = u1-u2;
subplot(2,2,2)
stem(n, x2)
xlabel('n--->');
ylabel('amp--->');
title('h(n)');


subplot(2,2,3)
stem(-n, x2)
xlabel('n--->');
ylabel('amp--->');
title('h(-n)');

y=0
for k = -10:10;
  n = -10:10;
  u5 = k>=0;
  u6 = k-N>=0;
  x = u5-u6;
  h1 = n-k>=0;
  h2 = n-k-N>=0;
  h = h1-h2;
  y = y+x.*h;
end

subplot(2,2,4)
stem(n,y)
