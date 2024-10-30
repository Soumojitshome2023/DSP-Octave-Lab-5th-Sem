% Taking input from user
Xn = input("Enter the Sequence: ");
p = length(Xn);
N = input("Enter the length of DFT, N: ");

% Zero-padding the sequence to length N
Xk = [Xn, zeros(1, N - p)];

% Time indices
k = 0:N-1;

% Plot original sequence
subplot(2, 2, 1);
stem(k, Xk);
xlabel("Time");
ylabel("Amplitude");
title("Original Sequence X(k)");

% Initialize Xn for inverse DFT
Xn_reconstructed = zeros(1, N);

% Inverse DFT computation
for k = 0:N-1
    for n = 0:N-1
        Xn_reconstructed(n+1) = Xn_reconstructed(n+1) + Xk(k+1) * exp(2*pi*(-1i)*k*n/N);
    end
end

% Plot reconstructed sequence (time domain)
subplot(2, 2, 2);
n = 0:N-1;
stem(n, Xn_reconstructed);
xlabel("Time");
ylabel("Amplitude");
title("Reconstructed Sequence X(n)");

% Magnitude Spectrum
M = abs(Xn_reconstructed);
subplot(2, 2, 3);
stem(n, M);
xlabel("Time");
ylabel("Magnitude");
title("Magnitude Spectrum");

% Phase Spectrum
P = angle(Xn_reconstructed);
subplot(2, 2, 4);
stem(n, P);
xlabel("Time");
ylabel("Phase (radians)");
title("Phase Spectrum");


%Command Window
%Enter the Sequence: [1,1,1]
%Enter the length of DFT, N: 8

%Command Window
%Enter the Sequence: [1,1,1]
%Enter the length of DFT, N: 50

