%% IIR coefficients Quantization
%  @brief
%  > For the following coefficients bk, bk where
%           bk : Nominator Coefficients
%           ak : Deominator Coefficients
%
%  @creates a fixed-point objects with the following specified parameters.
%           w_len : word length
%           f_len : fraction length
%           coef_v: coefficients values
%           sign:   signed 1, unsigned 0
%  > @using fi constructor 
% %*************************************************

clc; close all; clear all;


%Nominator Coefficients
bk = [ 1    0          -1
       1    0.712824    1 
       1    0.05026     1
       1    -1.995649   1
     ];

[bk_rows bk_columns] = size(bk);

%Denominator Coefficients
ak = [ 1    -1.2        0.294975
       1    -0.413853   0.505521 
       1    -0.355163   0.82
       1    -1.951062   0.9604
     ];
 
[ak_rows ak_columns] = size(bk);


% Setting Specifications:
w_len =16;
f_len =10;
sign  =1;

% Get the quantized coefficievalues of Nominator bk
%bk_q=zeros(size(bk));


b = quantizer('fixed', 'Round', 'Saturate', [w_len f_len]);
[bk_q1, bk_q2, bk_q3]=quantize(b, [bk(1,:)], [bk(2,:)], [bk(3,:)]);
bk_q= [bk_q1; bk_q2; bk_q3];

a = quantizer('fixed', 'Round', 'Saturate', [w_len f_len]);
[ak_q1, ak_q2, ak_q3]=quantize(a, [ak(1,:)], [ak(2,:)], [ak(3,:)]);
ak_q= [ak_q1; ak_q2; ak_q3];


fprintf("[Nominator bk] Quantized Values in binary representation: \n 16-bit width, 10 fractional bits\n");
disp(bk_q);


fprintf("[Denominator ak] Quantized Values in binary representation: \n 16-bit width, 10 fractional bits\n");
disp(ak_q);

