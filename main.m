clc
clear all
close all

%load data 
load('testsignal.mat');
fprintf('This is the sound before filtering..\n')
sound(y)
pause(10) % pause 
% sampling frequency
fs = 8192; 
% notching frequency
fd = 550;
% Nyquist frequency
fn = fs/2;
% ratio that is useful
freqRatio = fd/fn;


%(i) at 0.1pi 
notchWidth = 30/fn; %(normalized frequency with respect to nyquist)
% zeros of the filter
thezeros = [exp( sqrt(-1)*pi*freqRatio ), exp( -sqrt(-1)*pi*freqRatio )];
% poles of the filter
thepoles = (1-notchWidth) * thezeros;
% plot on z plane
figure
zplane(thezeros.', thepoles.');
% put title
title('poles and zeros of the filter at 0.1pi 3dB bandwidth')
% numerator of transfer function
b = poly( thezeros );
% denomenator of transfer function
a = poly( thepoles );
figure;
freqz(b,a,32000,fs)
title('Transfer function of the filter at 0.1pi 3dB bandwidth')
z= filter(b,a,y);
clc
fprintf('This is the sound after filtering..\n')
sound(z)