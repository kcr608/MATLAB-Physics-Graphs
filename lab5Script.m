close all

%% Variables and Formulas
acceleration = [0.32 0.3 0.29 0.29 0.28 0.28 0.26 0.24 0.22 0.2 0.18 0.19 0.23 0.24 0.21 0.15 0.11 0.11 0.15 0.22 0.26 0.19 0.02 -0.14 -0.16 -0.06 0.07 0.16 0.2 0.2 0.16 0.12 0.07 0.03 0 0.02];
    
time = [0 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.85 0.9 0.95 1 1.05 1.1 1.15 1.2 1.25 1.3 1.35 1.4 1.45 1.5 1.55 1.6 1.65 1.7 1.75];

mass = 0.775;

force = acceleration * mass;

%% Acceleration against Plot
figure
plot(time,acceleration,'-*')
grid on
title('Acceleration against Time');
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');

%% Force against Time Plot
figure
plot(time,force,'-*')
grid on
title('Force against Time');
xlabel('Time (s)');
ylabel('Force (N)');

%% Acceleration against Time Trapezoid Riemann Sum Plot
figure
plot(time,acceleration,'-*')
area(time,acceleration);
grid on
title('Acceleration against Time Trapezoid Riemann Sum');
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');

xverts = [time(0.5:end-0.5); time(0.5:end-0.5); time(0.5:end); time(0.5:end)];
yverts = [zeros(1,36); acceleration(0.5:end-0.5); acceleration(0.5:end); zeros(1,36)];
p = patch(xverts,yverts,'b','LineWidth',0.5);

%% Velocity against Time Plot
cvelocity = cumtrapz(acceleration);
vtTable = table(time,cvelocity,'VariableNames',{'Time','Cumulative Velocity'});

figure
plot(time,cvelocity,'-*')
grid on
title('Velocity against Time');
xlabel('Time (s)');
ylabel('Velocity (m/s)');




