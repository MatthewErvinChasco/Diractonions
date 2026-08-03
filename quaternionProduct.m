%[text] Compute the direct product of two quaternions. This also gives the dot product and cross product between the 3D components of the vectors.
%[text] Copyright 2023 The Mathworks, Inc.
function [DirectProductAB,DotProductAB,CrossProductAB,MatrixProductAB] = quaternionProduct(A,B)

validateattributes(A,{'numeric','sym'},{'nonempty'})
validateattributes(B,{'numeric','sym'},{'nonempty'})

if numel(A) ~= 4 || numel(B) ~= 4
    error('Input vectors must have four elements each.')
end
A = A(:).';
B = B(:).';

Q = makeQuaternions;
e0 = Q(:,:,1);
e1 = Q(:,:,2);
e2 = Q(:,:,3);
e3 = Q(:,:,4);

AA = A(1)*e0 + A(2)*e1 + A(3)*e2 + A(4)*e3;
BB = B(1)*e0 + B(2)*e1 + B(3)*e2 + B(4)*e3;

MatrixProductAB = AA*BB;

DirectProductAB = sym([]);
for k = 1:4
    M = MatrixProductAB.*Q(:,:,k);
    M = M(:,1);
    DirectProductAB(k) = M(M~=0);
end

E = subs(subs(DirectProductAB,A(1),0),B(1),0);
DotProductAB = -E(1);
CrossProductAB = E(2:end);

%[appendix]{"version":"1.0"}
%---
