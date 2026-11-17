clc;
clear all;
close all;
fs=input('Enter the value of sampling frewuency(fs)in hz=');
fc=input('enter the value of cutoff frequency(fc)in hz=');
N=input('enter the order (odd order)');
wc=fc/(fs/2);
h=fir1(N,wc,'low',hamming(N+1));
freqz(h,1,1024,fs)