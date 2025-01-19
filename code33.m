% Q : Circular Convolution Program

% Input the first sequence
X = input("Enter the 1st Sequence: ");
xlen = length(X);

% Input the second sequence
H = input("Enter the 2nd Sequence: ");
hlen = length(H);

% Determine the maximum length for circular convolution
maxlen = max(xlen, hlen);

% Zero-pad both sequences to the maximum length
X = [X, zeros(1, maxlen - xlen)];
H = [H, zeros(1, maxlen - hlen)];

% Initialize the output sequence for circular convolution
y = zeros(1, maxlen);

% Circular convolution calculation
for n = 0:maxlen-1
    for k = 0:maxlen-1
        y(n+1) = y(n+1) + X(k+1) * H(mod((n-k), maxlen) + 1);
    end
end

% Display the result of the circular convolution
disp('Circular Convolution Result:');
disp(y);

% Plot the first sequence x(n)
subplot(3, 1, 1);
a = 0:maxlen-1;
stem(a, X, 'm');
xlabel('Time');
ylabel('Amplitude');
title('x(n)');

% Plot the second sequence h(n)
subplot(3, 1, 2);
b = 0:maxlen-1;
stem(b, H, 'm');
xlabel('Time');
ylabel('Amplitude');
title('h(n)');

% Plot the result of circular convolution y(n)
subplot(3, 1, 3);
n3 = 0:maxlen-1;
stem(n3, y, 'm');
xlabel('Time');
ylabel('Amplitude');
title('y(n) - Circular Convolution Result');



%{


Enter the 1st Sequence: [1,-1,-2,3,-1]
Enter the 2nd Sequence: [1,2,3]
Circular Convolution Result:
   8  -2  -1  -4  -1

%}
