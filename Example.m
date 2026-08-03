%[text] Compute the direct product, dot product and cross product of two quaternions. Input quaternions as 4-element vectors: symbolic or numeric.
%[text] (First element is "scalar", the rest are 3D vector elements)
A = sym("A"+string(0:3)) %[output:698e173b]
B = sym("B"+string(0:3)) %[output:22108cbc]

[DirProd3d,DotProd3d,CrossProd3d] = quaternionProduct(A,B) %[output:76e67918] %[output:50fbf354] %[output:224c792d]
%%
%[text] Compute the direct product, dot product and cross product of two octonions. Input octonions as 8-element vectors: symbolic or numeric.
%[text] (First element is "scalar", the rest are 7D vector elements)
A = sym("A"+string(0:7),{'real'}) %[output:705988aa]
B = sym("B"+string(0:7),{'real'}) %[output:06ea79ff]
[DirProd7d,DotProd7d,CrossProd7d] = octonionProduct(A,B) %[output:6464e99e] %[output:7050a27c] %[output:9e460324]

% test orthogonality
simplify(sum(CrossProd7d.*A(2:end)),100) %[output:584a8aed]
simplify(sum(CrossProd7d.*B(2:end)),100) %[output:65680a5a]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
%[output:698e173b]
%   data: {"dataType":"symbolic","outputData":{"name":"A","value":"\\left(\\begin{array}{cccc}\nA_0  & A_1  & A_2  & A_3 \n\\end{array}\\right)"}}
%---
%[output:22108cbc]
%   data: {"dataType":"symbolic","outputData":{"name":"B","value":"\\left(\\begin{array}{cccc}\nB_0  & B_1  & B_2  & B_3 \n\\end{array}\\right)"}}
%---
%[output:76e67918]
%   data: {"dataType":"symbolic","outputData":{"name":"DirProd3d","value":"\\left(\\begin{array}{cccc}\nA_0 \\,B_0 -A_1 \\,B_1 -A_2 \\,B_2 -A_3 \\,B_3  & A_0 \\,B_1 +A_1 \\,B_0 +A_2 \\,B_3 -A_3 \\,B_2  & A_0 \\,B_2 +A_2 \\,B_0 -A_1 \\,B_3 +A_3 \\,B_1  & A_0 \\,B_3 +A_1 \\,B_2 -A_2 \\,B_1 +A_3 \\,B_0 \n\\end{array}\\right)"}}
%---
%[output:50fbf354]
%   data: {"dataType":"symbolic","outputData":{"name":"DotProd3d","value":"A_1 \\,B_1 +A_2 \\,B_2 +A_3 \\,B_3"}}
%---
%[output:224c792d]
%   data: {"dataType":"symbolic","outputData":{"name":"CrossProd3d","value":"\\left(\\begin{array}{ccc}\nA_2 \\,B_3 -A_3 \\,B_2  & A_3 \\,B_1 -A_1 \\,B_3  & A_1 \\,B_2 -A_2 \\,B_1 \n\\end{array}\\right)"}}
%---
%[output:705988aa]
%   data: {"dataType":"symbolic","outputData":{"name":"A","value":"\\left(\\begin{array}{cccccccc}\nA_0  & A_1  & A_2  & A_3  & A_4  & A_5  & A_6  & A_7 \n\\end{array}\\right)"}}
%---
%[output:06ea79ff]
%   data: {"dataType":"symbolic","outputData":{"name":"B","value":"\\left(\\begin{array}{cccccccc}\nB_0  & B_1  & B_2  & B_3  & B_4  & B_5  & B_6  & B_7 \n\\end{array}\\right)"}}
%---
%[output:6464e99e]
%   data: {"dataType":"symbolic","outputData":{"name":"DirProd7d","value":"\\left(\\begin{array}{cccccccc}\nA_0 \\,B_0 -A_1 \\,B_1 -A_2 \\,B_2 -A_3 \\,B_3 -A_4 \\,B_4 -A_5 \\,B_5 -A_6 \\,B_6 -A_7 \\,B_7  & A_0 \\,B_1 +A_1 \\,B_0 +A_2 \\,B_3 -A_3 \\,B_2 +A_4 \\,B_5 -A_5 \\,B_4 -A_6 \\,B_7 +A_7 \\,B_6  & A_0 \\,B_2 +A_2 \\,B_0 -A_1 \\,B_3 +A_3 \\,B_1 +A_4 \\,B_6 -A_6 \\,B_4 +A_5 \\,B_7 -A_7 \\,B_5  & A_0 \\,B_3 +A_1 \\,B_2 -A_2 \\,B_1 +A_3 \\,B_0 +A_4 \\,B_7 -A_5 \\,B_6 +A_6 \\,B_5 -A_7 \\,B_4  & A_0 \\,B_4 +A_4 \\,B_0 -A_1 \\,B_5 +A_5 \\,B_1 -A_2 \\,B_6 +A_6 \\,B_2 -A_3 \\,B_7 +A_7 \\,B_3  & A_0 \\,B_5 +A_1 \\,B_4 -A_4 \\,B_1 +A_5 \\,B_0 -A_2 \\,B_7 +A_3 \\,B_6 -A_6 \\,B_3 +A_7 \\,B_2  & A_0 \\,B_6 +A_2 \\,B_4 -A_4 \\,B_2 +A_6 \\,B_0 +A_1 \\,B_7 -A_3 \\,B_5 +A_5 \\,B_3 -A_7 \\,B_1  & A_0 \\,B_7 -A_1 \\,B_6 +A_2 \\,B_5 +A_3 \\,B_4 -A_4 \\,B_3 -A_5 \\,B_2 +A_6 \\,B_1 +A_7 \\,B_0 \n\\end{array}\\right)"}}
%---
%[output:7050a27c]
%   data: {"dataType":"symbolic","outputData":{"name":"DotProd7d","value":"A_1 \\,B_1 +A_2 \\,B_2 +A_3 \\,B_3 +A_4 \\,B_4 +A_5 \\,B_5 +A_6 \\,B_6 +A_7 \\,B_7"}}
%---
%[output:9e460324]
%   data: {"dataType":"symbolic","outputData":{"name":"CrossProd7d","value":"\\left(\\begin{array}{ccccccc}\nA_2 \\,B_3 -A_3 \\,B_2 +A_4 \\,B_5 -A_5 \\,B_4 -A_6 \\,B_7 +A_7 \\,B_6  & A_3 \\,B_1 -A_1 \\,B_3 +A_4 \\,B_6 -A_6 \\,B_4 +A_5 \\,B_7 -A_7 \\,B_5  & A_1 \\,B_2 -A_2 \\,B_1 +A_4 \\,B_7 -A_5 \\,B_6 +A_6 \\,B_5 -A_7 \\,B_4  & A_5 \\,B_1 -A_1 \\,B_5 -A_2 \\,B_6 +A_6 \\,B_2 -A_3 \\,B_7 +A_7 \\,B_3  & A_1 \\,B_4 -A_4 \\,B_1 -A_2 \\,B_7 +A_3 \\,B_6 -A_6 \\,B_3 +A_7 \\,B_2  & A_2 \\,B_4 -A_4 \\,B_2 +A_1 \\,B_7 -A_3 \\,B_5 +A_5 \\,B_3 -A_7 \\,B_1  & A_2 \\,B_5 -A_1 \\,B_6 +A_3 \\,B_4 -A_4 \\,B_3 -A_5 \\,B_2 +A_6 \\,B_1 \n\\end{array}\\right)"}}
%---
%[output:584a8aed]
%   data: {"dataType":"symbolic","outputData":{"name":"ans","value":"0"}}
%---
%[output:65680a5a]
%   data: {"dataType":"symbolic","outputData":{"name":"ans","value":"0"}}
%---
