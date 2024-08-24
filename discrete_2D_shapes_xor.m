function K = discrete_2D_shapes_xor(I, J)
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
% - K : logical / binary matrix, the exclusive or operation result between I and J. ndims(K) < 3.


K = discrete_2D_shapes_union(I,J) - discrete_2D_shapes_intersection(I,J);


end % discrete_2D_shapes_xor