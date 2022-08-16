clear;
clc;
%% Determine the Interia Tensor

%For 500 gram payload

I = [[38018.74658, -8.61443, -244.70572]; [-8.61443, 37514.89880, 3238.39679]; [-244.70572, 3238.39679, 12495.93827]];
I = I.*0.000001;
Omega_X = [4*pi/9, 0, 0]';
Omega_Y = [0, 4*pi/9, 0]';
Omega_Z = [0, 0, 4*pi/9]';

%Torque
MaxTorque = 2.3*10^-4;
Torque_80 = MaxTorque * 0.8;
Torque_50 = MaxTorque * 0.5;
Torque_30 = MaxTorque * 0.3;

%Angular Momentum
L_X = I*Omega_X;
L_Y = I*Omega_Y;
L_Z = I*Omega_Z;

%Rotation Time (Max Torque_X axis)
tx_Max_X = sqrt(abs(L_X(1)/MaxTorque));
ty_Max_X = sqrt(abs(L_X(2)/MaxTorque));
tz_Max_X = sqrt(abs(L_X(3)/MaxTorque));
T_Max_X = [tx_Max_X, ty_Max_X, tz_Max_X];

%Rotation Time (Max Torque_Y axis)
tx_Max_Y = sqrt(abs(L_Y(1)/MaxTorque));
ty_Max_Y = sqrt(abs(L_Y(2)/MaxTorque));
tz_Max_Y = sqrt(abs(L_Y(3)/MaxTorque));
T_Max_Y = [tx_Max_Y, ty_Max_Y, tz_Max_Y];

%Rotation Time (Max Torque_Z axis)
tx_Max_Z = sqrt(abs(L_Z(1)/MaxTorque));
ty_Max_Z = sqrt(abs(L_Z(2)/MaxTorque));
tz_Max_Z = sqrt(abs(L_Z(3)/MaxTorque));
T_Max_Z = [tx_Max_Z, ty_Max_Z, tz_Max_Z];

%Rotation Time (80% Torque_X axis)
tx_80_X = sqrt(abs(L_X(1)/Torque_80));
ty_80_X = sqrt(abs(L_X(2)/Torque_80));
tz_80_X = sqrt(abs(L_X(3)/Torque_80));
T_80_X = [tx_80_X, ty_80_X, tz_80_X];

%Rotation Time (80% Torque_Y axis)
tx_80_Y = sqrt(abs(L_Y(1)/Torque_80));
ty_80_Y = sqrt(abs(L_Y(2)/Torque_80));
tz_80_Y = sqrt(abs(L_Y(3)/Torque_80));
T_80_Y = [tx_80_Y, ty_80_Y, tz_80_Y];

%Rotation Time (80% Torque_Z axis)
tx_80_Z = sqrt(abs(L_Z(1)/Torque_80));
ty_80_Z = sqrt(abs(L_Z(2)/Torque_80));
tz_80_Z = sqrt(abs(L_Z(3)/Torque_80));
T_80_Z = [tx_80_Z, ty_80_Z, tz_80_Z];

%Rotation Time (50% Torque_X axis)
tx_50_X = sqrt(abs(L_X(1)/Torque_50));
ty_50_X = sqrt(abs(L_X(2)/Torque_50));
tz_50_X = sqrt(abs(L_X(3)/Torque_50));
T_50_X = [tx_50_X, ty_50_X, tz_50_X];

%Rotation Time (50% Torque_Y axis)
tx_50_Y = sqrt(abs(L_Y(1)/Torque_50));
ty_50_Y = sqrt(abs(L_Y(2)/Torque_50));
tz_50_Y = sqrt(abs(L_Y(3)/Torque_50));
T_50_Y = [tx_50_Y, ty_50_Y, tz_50_Y];

%Rotation Time (50% Torque_Z axis)
tx_50_Z = sqrt(abs(L_Z(1)/Torque_50));
ty_50_Z = sqrt(abs(L_Z(2)/Torque_50));
tz_50_Z = sqrt(abs(L_Z(3)/Torque_50));
T_50_Z = [tx_50_Z, ty_50_Z, tz_50_Z];


%Rotation Time (30% Torque_X axis)
tx_30_X = sqrt(abs(L_X(1)/Torque_30));
ty_30_X = sqrt(abs(L_X(2)/Torque_30));
tz_30_X = sqrt(abs(L_X(3)/Torque_30));
T_30_X = [tx_30_X, ty_30_X, tz_30_X];

%Rotation Time (30% Torque_Y axis)
tx_30_Y = sqrt(abs(L_Y(1)/Torque_30));
ty_30_Y = sqrt(abs(L_Y(2)/Torque_30));
tz_30_Y = sqrt(abs(L_Y(3)/Torque_30));
T_30_Y = [tx_30_Y, ty_30_Y, tz_30_Y];

%Rotation Time (30% Torque_Z axis)
tx_30_Z = sqrt(abs(L_Z(1)/Torque_30));
ty_30_Z = sqrt(abs(L_Z(2)/Torque_30));
tz_30_Z = sqrt(abs(L_Z(3)/Torque_30));
T_30_Z = [tx_30_Z, ty_30_Z, tz_30_Z];

TimeArray = [[T_Max_X, T_Max_Y, T_Max_Z];[T_80_X, T_80_Y, T_80_Z];[T_50_X, T_50_Y, T_50_Z];[T_30_X, T_30_Y, T_30_Z]]