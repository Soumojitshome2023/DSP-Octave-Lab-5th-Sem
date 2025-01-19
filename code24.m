% Discrete time signal plot using octave (i) unit impulse signal (ii) unit step (iii) Ramp (iv) Parabolic Signal

% Unit Impulse
n1 = [-5:5];
x1 = n1 >=0;
y1 = n1-1>=0;
z = x1-y1;
subplot(2,2,1)
stem(n1,z)
xlabel('T--->')
ylabel('Amp--->')
title('Unit Impulse')

% Unit Step
n2 = [-3:5];
x2 = n2 >=0;
y2 = n2-6>=0;
z2 = x2-y2;
subplot(2,2,2)
stem(n2,z2)
xlabel('T--->')
ylabel('Amp--->')
title('Unit Step')


n3 = [0:10];
subplot(2,2,3)
stem(n3)
xlabel('T--->')
ylabel('Amp--->')
title('Ramp')


n4 = [0:10];
y4 = (n4.*n4)/4;
subplot(2,2,4)
stem(n4, y4)
xlabel('T--->')
ylabel('Amp--->')
title('Parabolic')
