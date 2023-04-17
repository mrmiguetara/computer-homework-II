N = 100;
% Chebychev filter
[n, wc] = cheb1ord(0.5,0.7,1,20);
[b,a] = cheby1(n,1,wc);


[gr,w] = grpdelay(b,a, N);

figure;x
stem(w,gr);
title('Group Delay vs Frequency');
ylabel('Group Delay(Sample)');
xlabel('Frequency( rad / samples)');

n = 0:1:N-1;

x = cos(0.05*pi*n);
% x = cos(0.5*pi*n);
y = filter(b,a,x);

figure;
stem(n,y);
hold on
stem (n,x)
ylim([-2 2])
legend;

