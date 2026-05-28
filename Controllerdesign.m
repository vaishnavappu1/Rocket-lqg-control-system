% Rocket LQG/LQI Control System

% System matrices

A = [0 1 0 0;
     0 -0.2 1 0;
     0 -2 -0.5 0;
     0 0 1 -0.1];

B = [1 0.1;
     0.8 0.2;
     0.1 1.5;
     0.2 1.2];

C = eye(4);

D = zeros(4,2);

% Tracking outputs

Ctrack = [1 0 0 0;
          0 0 1 0];

% Augmented matrices

Aa = [A zeros(4,2);
     -Ctrack zeros(2,2)];

Ba = [B;
      zeros(2,2)];

% Weight matrices

Qa = diag([100 10 200 50 400 0.2]);
Ra = diag([3 3]);

% LQI controller

Ka = lqr(Aa,Ba,Qa,Ra);

Kx = Ka(:,1:4);
Ki = Ka(:,5:6);
