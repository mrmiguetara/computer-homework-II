% Read the audio file
[x, fs] = audioread('/home/mrmiguetara/Downloads/ken2.wav');
% sound(x,fs)
% Butterworth LPF with R_p=1db R_s=20db w_s=0.05 w_p=0.07
[n,wo] = buttord(.05,.07,1,20);
[b,a] = butter(n,wo);
y = filter(b,a,x);
% sound(y,fs)
figure;
freqz(b, a,[]);
ylim([-25 5]);
title('Magnitude Response of the Butterworth Filter');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');




[n, w0] = cheb1ord([0.03 0.18],[0.06 0.15],1,20);
[b,a] = cheby1(n,1,w0);
y = filter(b,a,x);
% sound(y,fs);
figure;
freqz(b, a,[]);
ylim([-25 5]);
title('Magnitude Response of the Cheychev type I BPF (0.06,0.15)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');





[n, w0] = cheb1ord([0.09 0.23],[0.12 0.2],1,20);
[b,a] = cheby1(n,1,w0);
y = filter(b,a,x);
figure;
freqz(b, a, []);
ylim([-25 5]);
title('Magnitude Response of the Cheychev type I BPF (0.12,0.2)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
% sound(y,fs);




[n, w0] = cheb1ord([0.15 0.33],[0.18 0.3],1,20);
[b,a] = cheby1(n,1,w0);
y = filter(b,a,x);
figure;
freqz(b, a, []);
ylim([-25 5]);
title('Magnitude Response of the Cheychev type I BPF (0.18,0.3)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
% sound(y,fs);



[n,wo] = buttord(0.28,0.25,1,20);
[b,a] = butter(n,0.28,'high');
y = filter(b,a,x);
figure;
freqz(b,a,[])
ylim([-25 5]);
title('Magnitude Response of the Butterworth HPF (0.25,0.28)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
% sound(y,fs);
