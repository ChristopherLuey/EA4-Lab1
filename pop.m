clear
clc
% Figures 1 and 2
% Declaring variables
tbeg = 0;
tfin = 200;
pinit = [0.95 1.05];
% ode45 function for pinit = 0.95
[t_1,P_1] = ode45(@yprime, [tbeg,tfin], pinit(1));
% Plotting population over time for first pinit value
figure (1)
plot(t_1,P_1,'LineWidth',2)
xlabel('Time')
ylabel('Population')
ylim([0.94,1.06])
% ode45 function for pinit = 1.05
[t_2,P_2] = ode45(@yprime, [tbeg,tfin], pinit(2));
% Plotting population over time for second pinit value
figure (2)
plot(t_2,P_2,'c-','LineWidth',2)
xlabel('Time')
ylabel('Population')
ylim([0.94,1.06])

clear
clc
% Figure 3
% Declaring variables
tbeg = 0;
tfin = 200;
pinit = [0.95 1.05];
% Manipulating the code to visualize the effect of tolerance
% Globalizing the varialbe 'count' between pop.m and yprime.m
global count
count = 0;
% Creating an array of all three tolerance levels
tol = [1*10^(-4),1*10^(-6),1*10^(-12)];
% Setting the first tolerance level
options = odeset('RelTol',tol(1),'AbsTol',tol(1));
% ode45 function for pinit = 0.95 and tol(1) = 1e-4
[t_3,P_3] = ode45(@yprime, [tbeg,tfin], pinit(1), options);
% Plotting using the aforementioned variables
figure (3)
plot(t_3,P_3,'k-','LineWidth',2)
xlabel('Time')
ylabel('Population')
ylim([0.9999,1.0001])
hold on
% Setting the second tolerance level
options_1 = odeset('RelTol',tol(2),'AbsTol',tol(2));
% ode45 function for pinit = 0.95 and tol(1) = 1e-6
[t_4,P_4] = ode45(@yprime, [tbeg,tfin], pinit(1), options_1);
% Plotting using the aforementioned variables
plot(t_4,P_4,'g-','LineWidth',2)
hold on
% Setting the third tolerance level
options_2 = odeset('RelTol',tol(3),'AbsTol',tol(3));
% ode45 function for pinit = 0.95 and tol(1) = 1e-12
[t_5,P_5] = ode45(@yprime, [tbeg,tfin], pinit(1), options_2);
% Plotting using the aforementioned variables
plot(t_5,P_5,'r-','LineWidth',2)

% Figure 4
% Declaring variables
tbeg = 0;
tfin = 200;
pinit = [0.95 1.05];
% Creating an array of all three tolerance levels
tol = [1*10^(-4),1*10^(-6),1*10^(-12)];
% Setting the first tolerance level
options = odeset('RelTol',tol(1),'AbsTol',tol(1));
% ode45 function for pinit = 1.05 and tol(1) = 1e-4
[t_6,P_6] = ode45(@yprime, [tbeg,tfin], pinit(2), options);
% Plotting using the aforementioned variables
figure (4)
plot(t_6,P_6,'k-','LineWidth',2)
xlabel('Time')
ylabel('Population')
ylim([0.9999,1.0001])
hold on
% Setting the second tolerance level
options_1 = odeset('RelTol',tol(2),'AbsTol',tol(2));
% ode45 function for pinit = 1.05 and tol(1) = 1e-6
[t_7,P_7] = ode45(@yprime, [tbeg,tfin], pinit(2), options_1);
% Plotting using the aforementioned variables
plot(t_7,P_7,'g-','LineWidth',2)
hold on
% Setting the third tolerance level
options_2 = odeset('RelTol',tol(3),'AbsTol',tol(3));
% ode45 function for pinit = 1.05 and tol(1) = 1e-12
[t_8,P_8] = ode45(@yprime, [tbeg,tfin], pinit(2), options_2);
% Plotting using the aforementioned variables
plot(t_8,P_8,'r-','LineWidth',2)

clear
clc
% Figures 5 and 6
% Declaring variables
tbeg = 0;
tfin = 25;
pinit = 1.13;
% Creating an array of all three tolerance levels
tol = [1*10^(-4),1*10^(-6),1*10^(-12)];
% Globalizing the variables 'count', 'b', and 'dur' between pop.m and 
% yprime.m
global count b dur
count = 0;
b = 0.8;
dur = 0.5;
s = mod(tfin,dur);
% ode45 function for pinit = 1.13 and defult Matlab tolerance
[t_9,P_9] = ode45(@yprime, [tbeg,tfin], pinit);
% Plotting using the aforementioned variables
figure (5)
plot(t_9,P_9,'m-','LineWidth',2)
xlabel('Time')
ylabel('Population')
ylim([1.1,1.3])
xlim([0,25])
hold on
% Setting the first tolerance level
options = odeset('RelTol',tol(1),'AbsTol',tol(1));
% ode45 function for pinit = 1.13 and tol(1) = 1e-4
[t_10,P_10] = ode45(@yprime, [tbeg,tfin], pinit, options);
% Plotting using the aforementioned variables
plot(t_10,P_10,'k-','LineWidth',2)
hold off

% Setting the second tolerance level
options_1 = odeset('RelTol',tol(2),'AbsTol',tol(2));
% ode45 function for pinit = 1.13 and tol(1) = 1e-6
[t_11,P_11] = ode45(@yprime, [tbeg,tfin], pinit, options_1);
% Plotting using the aforementioned variables
figure (6)
plot(t_11,P_11,'g-','LineWidth',2)
xlabel('Time')
ylabel('Population')
ylim([1.1,1.3])
xlim([0,25])
hold on
% Setting the third tolerance level
options_2 = odeset('RelTol',tol(3),'AbsTol',tol(3));
% ode45 function for pinit = 1.13 and tol(1) = 1e-12
[t_12,P_12] = ode45(@yprime, [tbeg,tfin], pinit, options_2);
% Plotting using the aforementioned variables
plot(t_12,P_12,'r-','LineWidth',2)
hold off

