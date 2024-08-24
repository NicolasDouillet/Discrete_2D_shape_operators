function K = discrete_2D_shapes_intersection_from_isinside2Dset(I, J)
%
% Author : nicolas.douillet (at) free.fr, 2024.


K = false(size(I));

fI = find(I);
fJ = find(J);

[I_row,I_col] = ind2sub(size(I),fI);
[J_row,J_col] = ind2sub(size(J),fJ);

I_coord = cat(2,I_row,I_col);
J_coord = cat(2,J_row,J_col);

isIinJ = isinside2Dset(J_coord,I_coord);
isJinI = isinside2Dset(I_coord,J_coord);

K_coord_I = I_coord(isIinJ,:);
K_coord_J = J_coord(isJinI,:);
K_coord = intersect(K_coord_I,K_coord_J,'rows');

K_id = sub2ind(size(K),K_coord(:,1),K_coord(:,2));
K(K_id) = 1;


end % discrete_2D_shapes_intersection_from_isinside2Dset