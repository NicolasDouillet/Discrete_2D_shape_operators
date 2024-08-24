% test discrete_2D_shapes_logical_operators
%
% Author : nicolas.douillet (at) free.fr, 2024.


flnm1 = 'shape3.png'; % 'shape1.png'; % 'complexgear.png'
flnm2 = 'shape4.png'; % 'shape2.png'; % 'pseudoflower.png'

I = imread(flnm1);
J = imread(flnm2);

if ~islogical(I)    
    if size(I,3) > 1        
        I = rgb2gray(I);        
    end    
    I = imbinarize(I);    
end

if ~islogical(J)    
    if size(J,3) > 1        
        J = rgb2gray(J);        
    end    
    J = imbinarize(J);    
end

K = discrete_2D_shapes_intersection(I,J);
L = discrete_2D_shapes_union(I,J);
M = discrete_2D_shapes_xor(I,J); % L - K % actually


figure;
subplot(231);
imshow(cat(3,I,zeros(size(I)),zeros(size(I))));
title('I','FontSize',14);

subplot(232);
imshow(cat(3,zeros(size(J)),zeros(size(I)),J));
title('J','FontSize',14);

subplot(233);
imshow(cat(3,I,zeros(size(I)),J));
title('Superposition of I and J','FontSize',14);

subplot(234);
imshow(cat(3,K,zeros(size(K)),K));
title('I \cap J','FontSize',14);

subplot(235);
imshow(L);
title('I \cup J','FontSize',14);

subplot(236);
imshow(cat(3,zeros(size(M)),M,zeros(size(M))));
title('I \oplus J','FontSize',14);

sgtitle(cat(2,'Binary operations between ''',flnm1,''' shape and ''',flnm2,''' shape.'));
