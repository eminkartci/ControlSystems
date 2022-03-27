
%%
% Emin Kartci
% Control Systems

% Topics
% 1 - Residue - Partial Fraction Expansion

%% Code

nominator = 1;          %         1
                        % -----------------
denominator = [1 3 2];  % 1*s^2 + 3*s + 2

[r,p,k] = residue(nominator,denominator) 
% R -> nominator constant
% p -> Pole
% k -> additional constant

%% Format

%    r(1)         r(2)
% ---------- + ---------- ... + k
%   s-p(1)       s-p(2)


%% Application

% Frequency Domain
% F(s) = -0.02/(s + 4) -0.22/(s+1) -0.33/(s+1)^2 + 0.25/s

% Time Domain
% f(t) = -0.02*exp(-4t)u(t) - 0.22*e(-t)u(t) - 0.33texp(-t)u(t)+0.25u(t)
