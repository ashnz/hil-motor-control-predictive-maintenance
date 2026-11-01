% Retrieve results from Simulink
speed = out.speed_rpm;
current = out.current_A;

% Extract time and measurement vectors
t = speed.Time;
rpm = squeeze(speed.Data);
amps = squeeze(current.Data);

% Calculate performance metrics
finalSpeed = mean(rpm(t >= 4.5));
info = stepinfo(rpm, t, finalSpeed);

fprintf('Steady-state speed: %.2f RPM\n', finalSpeed);
fprintf('Rise time: %.4f seconds\n', info.RiseTime);
fprintf('Settling time: %.4f seconds\n', info.SettlingTime);
fprintf('Overshoot: %.2f %%\n', info.Overshoot);
fprintf('Peak current: %.3f A\n', max(abs(amps)));

figure;

plot(t, rpm, 'LineWidth', 1.5);
grid on;

xlabel('Time (s)');
ylabel('Motor Speed (RPM)');
title('Open-Loop DC Motor Speed Response');

xlim([0 1]);

exportgraphics(gcf, ...
    'open_loop_speed_response.png', ...
    'Resolution', 300);

% Export the armature-current response
figure;

plot(current.Time, squeeze(current.Data), 'LineWidth', 1.5);
grid on;

xlabel('Time (s)');
ylabel('Armature Current (A)');
title('Open-Loop DC Motor Armature Current');

xlim([0 1]);

exportgraphics(gcf, ...
    'open_loop_current_response.png', ...
    'Resolution', 300);
