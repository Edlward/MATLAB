Fs = 160000;          % Sampling frequency
T = 1/Fs;             % Sampling period
L = 5000;             % Length of signal
t = (0:L-1)*T;        % Time vector
f = Fs*(0:(L/2))/L;


% Original Plot
X1 = real_ia;
plot(1000*t(1:5000),X1(1:5000));
title('Signal Real');
xlabel('t (milliseconds)');
ylabel('X(t)');

X2 = expect_ia;
plot(1000*t(1:5000),X2(1:5000));
title('Signal Expect');
xlabel('t (milliseconds)');
ylabel('X(t)');

% FFT Plot
% Real
Y1 = fft(X1);
P2 = abs(Y1/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
% Expect
Y2 = fft(X2);
Q2 = abs(Y2/L);
Q1 = Q2(1:L/2+1);
Q1(2:end-1) = 2*Q1(2:end-1);

plot(f,P1 - Q1);
title('Single-Sided Amplitude Spectrum of S(t)')
xlabel('f (Hz)')
ylabel('|P1(f)| - |Q1(f)|')





