% IDFT (Inverse DFT) Without using built-in functions

% Taking input from user
Xn = input("Enter the Sequence: "); % e.g., [1, 1, 1]
N = input("Enter the length of DFT, N: "); % e.g., 8 or 50

% Length of input sequence
p = length(Xn);

% Zero-padding the sequence to length N
Xk = [Xn, zeros(1, N - p)];

% Time indices
k = 0:N-1;

% Plot original sequence
subplot(2, 2, 1);
stem(k, Xk, 'filled');
xlabel("Time");
ylabel("Amplitude");
title("Original Sequence X(k)");

% Initialize reconstructed sequence for inverse DFT
Xn_reconstructed = zeros(1, N);


% Inverse DFT computation
for n = 0:N-1
    for k = 0:N-1
        Xn_reconstructed(n+1) = Xn_reconstructed(n+1) + (1/N) * Xk(k+1) * exp(2*pi*(1i)*k*n/N); % positive 1i
    end
end


% Display reconstructed sequence
disp("Reconstructed Sequence X(n):");
disp(real(Xn_reconstructed)); % Use `real` to avoid negligible imaginary parts due to numerical errors.

% Plot reconstructed sequence (time domain)
subplot(2, 2, 2);
n = 0:N-1;
stem(n, real(Xn_reconstructed), 'filled');
xlabel("Time");
ylabel("Amplitude");
title("Reconstructed Sequence X(n)");

% Magnitude Spectrum
M = abs(Xn_reconstructed);
subplot(2, 2, 3);
stem(n, M, 'filled');
xlabel("Frequency");
ylabel("Magnitude");
title("Magnitude Spectrum");

% Phase Spectrum
P = angle(Xn_reconstructed);
subplot(2, 2, 4);
stem(n, P, 'filled');
xlabel("Frequency");
ylabel("Phase (radians)");
title("Phase Spectrum");

%{

Command Window
Enter the Sequence: [1,1,1]
Enter the length of DFT, N: 8

Command Window
Enter the Sequence: [1,1,1]
Enter the length of DFT, N: 50

Command Window
Enter the Sequence: [12, -4+4j, -4, -4-4j]
Enter the length of DFT, N: 4

Reconstructed Sequence X(n):
   0   2   4   6

========================================================

use the built-in ifft function to compute the Inverse Discrete Fourier Transform (IDFT).

% Example Fourier-transformed data
fourier_transformed = [12, -4+4j, -4, -4-4j];

% Compute the inverse DFT
inverse_dft = ifft(fourier_transformed);

% Display the result
disp('Inverse DFT:');
disp(inverse_dft);

Command Window
Inverse DFT:
   0   2   4   6

%}
