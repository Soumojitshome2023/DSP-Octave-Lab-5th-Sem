t = 2;
a = 5;
y1 = a;
y2 = -a;

t1 = 0:0.01:t;
t2 = t/2:0.01:t;

for k = 1:10
  plot(t1,y1,'r');
  hold on;
  plot(t2,y2,'r');
  hold on;
  k = k+1
  t1=t1+t;
  t2=t2+t;
end
