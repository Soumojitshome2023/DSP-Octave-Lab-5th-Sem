
% Find linear convolution of two user input sequence using 'conv' function, also plot the given sequence and convolute sequence  

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


%{

Enter 1st sequence : [1,9,5,2,1]
Enter 2nd sequence : [1,2,3]
z =

    1   11   26   39   20    8    3


%}
