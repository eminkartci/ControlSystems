%%
% Emin Kartci
% Control Systems

% Topics
% 1 - Impulse Response
% 2 - Step Response
% 3 - Peak Time
% 4 - Overshoot Time

%% Code

% Natural Frequency
wn = 4;
% Zeta Value
z = 0.1;

% H(s) = wn^2 / (s^2 + 2zwns + wn^2)
impulse([wn^2], [1 2*z*wn wn^2])
step([wn^2], [1 2*z*wn wn^2]) % H(s) * 1/s because 1/s is the step function in frequency domain

%% Example
impulse([1], [1 0 1])   % 1 / s^2 + 1
step([1], [1 0 1])      % 1 / s^2 + 1

%% Example
% s^2 + 4s + 4
% wn = 2
% z = 1

impulse(4, [1 4 4])

% Transfer Function
H = tf(4, [1 4 4]);
[y,t] = step(H);
plot(t, y)

%% Example
H = tf(1, [1 1 1]);
[y,t] = step(H);
plot(t,y)

% Find %OS and Tp
[y_max, idx] = max(y)
Tp = t(idx);
OS = 100*(y_max - y(end)) / y(end)

% Find the %OS limits -> +-2% of the last value
upperLimit = y(end)*1.02;
lowerLimit = y(end)*0.98;

for i = length(y):-1:1 % iterate all values from end
    
    if y(i) > thr1 | y(i) < thr2 % check if out of the limit
        Ts = t(i) % Get the time value
        break % finis the loop
    end
        
end
