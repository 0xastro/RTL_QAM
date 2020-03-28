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
bk_q=fi(bk, sign, w_len, f_len);

% Get the quantized coefficievalues of denomenator ak
%ak_q=zeros(size(ak));
ak_q=fi(ak, sign, w_len, f_len);

%to get object properties i.e int16, int32, bin
ak_q_bin=ak_q.bin;
ak_q_int16=ak_q.int16;


%% Another Method to verify, or floating point operations
% q = quantizer('fixed', 'Round', 'Saturate', [w_len f_len]);
% y=quantize(q, [ak(1,:)]);
