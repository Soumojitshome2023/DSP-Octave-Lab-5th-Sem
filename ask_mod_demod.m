% ASK Modulation and Demodulation

clc;
clear all;
close all;

% Parameters
Tb = 1;               % Bit duration
fc = 10;              % Carrier frequency
t = 0:Tb/100:Tb;      % Time for one bit
N = 10;               % Number of bits in the message

% Generate Carrier Signal
c = sqrt(2/Tb) * cos(2 * pi * fc * t);

% Generate Random Message Signal
m = rand(1, N);       % Random values between 0 and 1
m_binary = m > 0.5;   % Convert to binary (1 if > 0.5, else 0)

% Initialize full signals
t_total = [];         % Total time vector
message = [];         % Full message signal
ask_sig = [];         % Full ASK signal

% ASK Modulation
for i = 1:N
    % Time for the current bit
    t_bit = t + (i-1) * Tb;
    t_total = [t_total, t_bit]; % Append to total time vector

    % Generate message signal for current bit
    if m_binary(i) == 1
        m_s = ones(1, length(t)); % Message signal for bit 1
    else
        m_s = zeros(1, length(t)); % Message signal for bit 0
    end

    % Append to full signals
    message = [message, m_s];
    ask_sig = [ask_sig, c .* m_s]; % Modulate the carrier with the message
end

% Plot Message Signal
subplot(5, 1, 1);
plot(t_total, message, 'r');
title('Message Signal');
xlabel('t --->');
ylabel('m(t)');
grid on;

% Plot Carrier Signal
subplot(5, 1, 2);
plot(t_total, repmat(c, 1, N));
title('Carrier Signal');
xlabel('t --->');
ylabel('c(t)');
grid on;

% Plot ASK Signal
subplot(5, 1, 3);
plot(t_total, ask_sig, 'b');
title('ASK Signal');
xlabel('t --->');
ylabel('s(t)');
grid on;

% ASK Demodulation
t1 = 0; t2 = Tb;                 % Initialize time intervals
demod_signal = [];               % Initialize demodulated binary signal
detected_bits = [];              % Detected binary bits (0s and 1s)

for i = 1:N
    % Extract the received bit signal
    t_bit = t1:Tb/100:t2;        % Time for the current bit
    received_bit = ask_sig((i-1)*length(t)+1 : i*length(t));

    % Correlator: Multiply with carrier and sum
    correlation = sum(received_bit .* c);

    % Decision Device: Compare correlation with threshold
    if correlation > 0
        detected_bits = [detected_bits, 1];              % Detected as '1'
        demod_signal = [demod_signal, ones(1, length(t))]; % Reconstruct bit waveform
    else
        detected_bits = [detected_bits, 0];              % Detected as '0'
        demod_signal = [demod_signal, zeros(1, length(t))]; % Reconstruct bit waveform
    end

    % Update time intervals
    t1 = t1 + Tb;
    t2 = t2 + Tb;
end

% Plot Detected Bits as a Binary Message Signal
subplot(5, 1, 4);
stem(0:N-1, detected_bits, 'm', 'LineWidth', 1.5);
title('Detected Binary Bits');
xlabel('Bit Index');
ylabel('Detected Bits');
grid on;

% Plot Demodulated Signal
subplot(5, 1, 5);
plot(t_total, demod_signal, 'g');
title('Demodulated Signal');
xlabel('t --->');
ylabel('m(t)_{detected}');
grid on;

