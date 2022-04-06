%%
% Emin Kartci
% Control Systems

% Topics
% 1 - Root Locus

% 2 - Check if a point satisfy the angle condition

% 3 - Find K satisfies the Mangitude Condition


%% Code
G = tf([1 2], [1 4 13]);
H = 1;

% a) Plot the root locus of the system

rlocus(G*H)

% b) does s_star=-4.06+2.18j satisfy the angle condition?

s_star=-4.06+2.18*1i
angle((s_star+2)/(s_star^2+4*s_star+13))

% c) Is s_star on root-locus? yes, because it satisfies the angle cond.

% d)Is s_star a pole of the system? It should also satisfy the mag. cond.

abs((s_star+2)/(s_star^2+4*s_star+13));

% e) Find a constant K such that s_star becomes a pole of the system

K = 1 / (0.2427);

abs(K*(s_star+2)/(s_star^2+4*s_star+13))

T = feedback(G, H);
zpk(T)


T = feedback(K*G, H);
zpk(T)

% f) Can we find a K such that the system will have a pole at s_star=-4+j
s_star=-4+j;
angle((s_star+2)/(s_star^2+4*s_star+13))

% g) Find K such that the Ts is reduced by 1/2

% Ts = 4/(zeta*wn)

% original system has zeta*wn=2.5, Ts = 4/2.5=1.6 seconds
% I want the new system to have 0.8 seconds of settling time