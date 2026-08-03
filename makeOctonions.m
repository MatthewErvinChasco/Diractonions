%[text] ## Cayley-Dickson construction for Octonions
%[text] $(1,0),(i,0),(j,0),(k,0),(0,1),(0,i),(0,j),(0,k)$
function O = makeOctonions
Q = makeQuaternions;
Z(:,:,1:4) = zeros(4,4,4);
% octonion elements:
O = [Q,Z];
O(:,:,5:8) = [Z,Q];
end

%[appendix]{"version":"1.0"}
%---
