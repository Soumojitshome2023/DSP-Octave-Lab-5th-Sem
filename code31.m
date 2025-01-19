%{

Write octave program to find 4 and 8 point DFT of sequence using analytical method. Verify the result of 4 point DFT using theoretical calculation, plot sequence corresponding DFT, magnitude, response and angle response also find 51 point DFT and compare it with previous

    x(n) = {1, 1, 1}

%}


N = input("Enter length : ");
z = zeros(1, N);


for n = 0:N-1
    k = 0:N-1;
    x = [ones(1,3), zeros(1,N-3)];
    y = ((2*pi*k)/N)*n;
    z(k+1) = z(k+1) + x(n+1) .* exp(-1i*y);

    % Plotting in the loop will overwrite the plot on each iteration,
    % so plot only once after the loop.
end

z

% First plot: Real part of z
subplot(2, 2, 1);
stem(k, real(z));
xlabel('n --->');
ylabel('Real Part of z --->');


% Second plot: Magnitude (Amplitude) of z
p = abs(z);
subplot(2, 2, 2);
stem(k, p);
xlabel('n --->');
ylabel('Amplitude --->');


% Third plot: Phase of z
q = angle(z);
subplot(2, 2, 3);
stem(k, q);
xlabel('n --->');
ylabel('Phase --->');

