%% Volume-Preserving Maps via Preconditioned nonlinear CG method
%
% Main program:
% [S, VB, VI, Bdry] = BallIEM(T, V)
% 
% Required Input:
% T: #T x 3 triangulations of a trtrahedral mesh
% V: #V x 3 vertex coordinates of a trtrahedral mesh
%
% Output:
% S: #V x 3 vertex coordinates of the balled volume-preserving map
% VB: indices of boundary vertices
% VI: indices of interior vertices
% Bdry.F: triangulations of a boundary triangular mesh
% Bdry.V: vertex coordinates of a boundary triangular mesh
% Bdry.S: vertex coordinates of a boundary spherical map
%
% Optional Input:
% BallIEM( __, "MaxIter", Value): the maximum iterative number (default: 100)
% BallIEM( __, "Tol", Value): the tolerance of stoping criteria (default: 1e-6)
%
%
%% Remark:
% If you use this code in your own work, please cite the following paper:
% [1] S.-Y. Liu, T.-M. Huang, W.-W. Lin, and M.-H. Yueh, "Volume-Preserving
%   Parameterizations via Preconditioned Nonlinear Conjugate Gradient
%   Method"
% doi: 10.1007/s10957-026-03002-5
%
% License:
% This software is released for academic and research purposes only.
% Commercial use is not permitted without prior written permission from the authors.
% Copyright (c), Shu-Yung Liu and Mei-Heng Yueh
%
%
%%
clear; clc;
load('Arnold_v6990.mat', 'T', 'V');

[S, VB, VI, Bdry] = BallIEM(T, V);

volume_rslt(T, V, S);