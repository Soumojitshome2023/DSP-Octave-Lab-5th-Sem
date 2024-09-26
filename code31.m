N = input("Enter len : ");
z = zeros(1, N);

for n = 0:N-1
    k = 0:N-1;
    x = [ones(1,3), zeros(1,N-3)];
    y = ((2*pi*k)/N)*n;
    z(k+1) = z(k+1) + x(n+1) .* exp(-1i*y);

    % Plotting in the loop will overwrite the plot on each iteration,
    % so plot only once after the loop.
end

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
