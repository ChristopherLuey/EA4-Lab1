clear
clc
tbeg = 0;
tfin = 200;
pinit = 0.95;

global count
count = 0;

tol = [1*10^(-4),1*10^(-6),1*10^(-12)];
odeset('RelTol',tol(1),'AbsTol',tol(1))

[t,P] = ode45(@yprime, [tbeg,tfin], pinit)
figure (1)
plot(t,P,'m-','LineWidth',2)
xlabel('time')
ylabel('population')
ylim([0.9999,1.0001])