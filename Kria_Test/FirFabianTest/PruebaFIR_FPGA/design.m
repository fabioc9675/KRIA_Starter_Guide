%% Creacion de filtro FIR
clear all, close all, clc

fs = 500; % Frecuencia de muestreo
f_pass = 100; % Frecuencia de paso
% f_stop = 200; % Frecuencia de rechazo
passband = f_pass / (fs/2);
%stopband = f_stop / (fs/2);
N = 100; % Orden del filtro

% Diseño del filtro pasa bajos con fir1
b = fir1(N, passband, 'low', hanning(N+1));

% Respuesta en frecuencia del filtro diseñado
figure(1)
freqz(b, 1, 512, fs);

%% Test del filtro FIR
t = 0:1/fs:10;
t = t';
sig = sin(2*pi*4*t) +sin(2*pi*200*t) + 2.5;

simin =[t,sig];

y = filter(b,1,sig);

figure(2)
subplot(211)
plot(t,sig)
subplot(212)
plot(t,y)

%% Pasar los coeficientes a numeros enteros
b_int = round(b*(2^15))';
csvwrite('fir.csv', b_int);

y_int = filter(b_int,1,sig);

figure(3)
subplot(211)
plot(t,sig)
subplot(212)
plot(t,y_int)