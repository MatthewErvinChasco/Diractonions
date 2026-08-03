%[text] Represent quaternions in terms of the Dirac gamma matrices, which are assembled from the Pauli spin matrices.
%[text] Copyright 2023 The Mathworks, Inc.
%[text] $\\hat{i} = \\gamma^1$
%[text] $\\hat{j} = i\\gamma^5 \\gamma^0 \\gamma^2 = \\gamma^3 \\gamma^1$
%[text] $\\hat{k} = \\gamma^3$
function Q = makeQuaternions
s1= [0 1;1 0];
s2 = [0 -1i; 1i 0];
s3 = [1 0; 0 -1];
z2 = zeros(2);

Q(:,:,1) = [z2, s1; -s1, z2];
Q(:,:,2) = [1i*s2, z2; z2, 1i*s2];
Q(:,:,3) = -[z2, s3; -s3, z2];

Q(:,:,2:4) = Q;
Q(:,:,1) = eye(4);
end

%[appendix]{"version":"1.0"}
%---
