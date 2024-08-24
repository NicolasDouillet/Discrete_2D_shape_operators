function K = discrete_2D_shapes_union(I, J)
%
% Author : nicolas.douillet (at) free.fr, 2024.
%
%
% Inputs
%
% - I : logical / binary matrix, the first image / shape input. ndims(I) < 3.
%
% - J : logical / binary matrix, the second image / shape input. ndims(J) < 3.
%
%
% Output
%
% - K : logical / binary matrix, the union of I and J. ndims(K) < 3.


K = I | J;


end % discrete_2D_shapes_union