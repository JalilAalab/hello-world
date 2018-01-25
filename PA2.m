% Jalil (Rohana) Aalab PA 2 Jan/28/2018
% Simple Electron Simulation Tool

p = 0;
v = 0;
dt = 10;
F = 1;
mass_e = 0.26 * 9.109 * (10^-31);
a = F / mass_e ;

prob = 0.05;
old_v = 0;
old_p = 0;
old_t = 0;

subplot(3,1,1)
title('Velocity over Time');
xlabel('Time');
ylabel('Velocity');
grid off;
hold on;

subplot(3,1,2)
title('Position vs Velocity');
xlabel('Position');
ylabel('Velocity');
grid off;
hold on;

subplot(3,1,3)
title('Position over Time');
xlabel('Time');
ylabel('Position');
grid off;
hold on;

pause(1);
t = 0;
%F=MA
%v=a*t
%x=v*t

count = 0;
avg_d = 0;
old_dv = 0;
total_dv = 0;
for t = 1 : dt : (1000 * 1000)
    v = a * dt;
    p = v * dt;
    d_v_new = p /t;
    total_dv = d_v_new + old_dv;
    count = count + 1;
    avg_d = total_dv / count;
    
    if rand < prob
        v = 0;
    end
    
    subplot(3,1,1)
    title(['Avg D Vel: ', num2str(avg_d)]);
    plot(t, v,'.b');
    hold on;
    
    subplot(3,1,2)
    plot(p, v,'.k');
    hold on;
    
    subplot(3,1,3)
    plot(t, p,'.r');
    hold on;
    
    old_dv = d_v_new;
    
    pause(0.01)
end



