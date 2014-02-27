clf;
x = -4:0.05:4;
n1 = normpdf(x, 0, 1);
y = -50:0.05:50;
n2 = normpdf(y, -1, 10);
z = 99.9:0.00001:100.1;
n3 = normpdf(z, 100, 0.01);

x2 = 0:0.01:20;
a = exppdf(x2, 1);
y2 = 0:0.01:20;
b = exppdf(y2, 2);
z2 = 0:0.01:60;
c = exppdf(z2, 10);

x3 = 0:0.01:20;
i = gampdf(x3, 1, 2);
y3 = 0:0.01:20;
j = gampdf(y3, 5, 1);

subplot(331);
plot(x, n1);
subplot(332);
plot(y, n2);
subplot(333);
plot(z, n3);

subplot(334);
plot(x2, a);
subplot(335);
plot(y2, b);
subplot(336);
plot(z2, c);

subplot(337);
plot(x3, i);
subplot(338);
plot(y3, j);
