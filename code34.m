% User Input DFT Without using built-in functions

% Input sequence length (DFT size)
N = input("Enter the length of DFT (N): "); % e.g., 8

% Initialize the output array z
z = zeros(1, N);

% Input sequence
Xn = input("Enter the sequence X[n]: "); % e.g., [1, 2, 3, 4]

% Length of input sequence
xnlen = length(Xn);

% Zero-padding the input sequence to match length N
x = [Xn, zeros(1, N - xnlen)];

% Compute DFT
for k = 0:N-1
    for n = 0:N-1
        z(k+1) = z(k+1) + x(n+1) * exp(-1i * 2 * pi * k * n / N); % DFT formula
    end
end

% Display the DFT result
disp("DFT Result Z[k]:");
disp(z);

% Plotting the results

% First plot: Real part of z
subplot(2, 2, 1);
stem(0:N-1, real(z), 'filled');
xlabel('k --->');
ylabel('Real Part of Z[k] --->');
title('Real Part of Z[k]');

% Second plot: Magnitude (Amplitude) of z
subplot(2, 2, 2);
stem(0:N-1, abs(z), 'filled');
xlabel('k --->');
ylabel('Amplitude --->');
title('Magnitude Spectrum |Z[k]|');

% Third plot: Phase of z
subplot(2, 2, 3);
stem(0:N-1, angle(z), 'filled');
xlabel('k --->');
ylabel('Phase (radians) --->');
title('Phase Spectrum ∠Z[k]');

% Fourth plot: Imaginary part of z (optional)
subplot(2, 2, 4);
stem(0:N-1, imag(z), 'filled');
xlabel('k --->');
ylabel('Imaginary Part of Z[k] --->');
title('Imaginary Part of Z[k]');


%{

Command Window
Enter the length of DFT (N): 4
Enter the sequence X[n]: [0,2,4,6]
DFT Result Z[k]:
   12.0000+0i   -4.0000+4.0000i   -4.0000-0.0000i   -4.0000-4.0000i

========================================================
Discrete Fourier Transform (DFT) using the built-in fft function.

% Example time-domain signal
time_signal = [0,2,4,6];

% Compute the Discrete Fourier Transform (DFT)
fourier_transformed = fft(time_signal);

% Display the result
disp('DFT:');
disp(fourier_transformed);

Command Window
DFT:
   12+0i   -4+4i   -4+0i   -4-4i



%}