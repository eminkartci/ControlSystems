%%
% Emin Kartci
% Control Systems

% Topics
% 1 - The further away the additional poles or zeros are from the y axis, 
% the less effect they have on the output.

% 2 -  T4 = T1*tf(1, [1 p]);
% If p is larger than 2*3=6, we can ignore the additional pole and T4 will
% be approximately equivalent to T1.

% 3 - r(1) / (s-p(1)) + r(2) / (s-p(2)) + r(3) / (s-p(3)), p(3) is the
% additional pole
%
% r(1)exp(-p(1)t)u(t) + r(2)exp(-p(2)t)u(t) + r(3)exp(-p(3)t)u(t)

% 4 - Parallel & Series Transfer Functions

%% Code
T1 = tf(24.542, [1 4 24.542]);
T2 = T1*tf(1, [1 10]);
T3 = T1*tf(1, [1 3]);


step(T1);
hold on;
step(10*T2);
step(3*T3);

legend('T1', 'T2', 'T3')

% find poles of the original system
roots([1 4 24.542])

figure;
pzmap(T1)

%% Example

T1 = tf(1, [1 0]);
T2 = tf(1, [1 2]);
G = parallel(T1, T2);

T3 = tf(1, [1 1]);
T4 = tf(1, [1 10]);
H = series(T3, T4);

T = feedback(G, H)

pzmap(T)

[r,p,k] = residue([2 24 42 20], [1 13 32 22 2]);
