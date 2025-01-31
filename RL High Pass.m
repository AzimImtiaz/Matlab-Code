clc;
clear all;
title('RL high pass');
num = [0 1 0];
den = [0 1 1];
w = logspace(-4, 4);
h = freqs(num,den,w);
f = w/(2*pi);
mag = 20*log10(abs(h));
semilogx(f,mag);
grid on;
xlabel('frequency, Hz');
ylabel('Gain,dB')
