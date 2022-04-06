
%%
% Emin Kartci
% Control Systems

% Topics
% 1 - Eigen Value 
% 2 - Initial Conditions
% 3 - Plotting

%% Code

% Define a 2x2 matrix
A = [2 5;2 -1]

% Get Eigen Value of the matrix
[V,D] = eig(A)

% Seperate eigen vectors by column
eigenVector1 = V(:,1)
eigenVector2 = V(:,2)

% Get eigen values
eigenValue1 = D(1,1)
eigenValue2 = D(2,2)

% Initial Conditions
% z(0) = [y(0); y'(0)]
% y(0) = 0, y'(0) = 1
z0 = [0;1];

% Multiply the inverse of eigen vector matrix with initial values
K = inv(V)*z0

% Get the results
K1 = K(1);
K2 = K(2);

%% Plot the results

% Create time range
t = [0:0.01:10];

% z = exp(l1*t)*v1*K1 + exp(l2*t)*v2*K2;
y = exp(eigenValue1*t)*eigenVector1(1)*K1 + exp(eigenValue2*t)*eigenVector2(1)*K2;

plot(t, y)



