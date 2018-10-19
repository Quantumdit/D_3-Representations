function [M] = RepresentD3(r,s)
%Gives the irreducible representation of an element of D_3, the symmetries
%of an equilateral triangle
%   Input:
%       r: Number of rotations a third of the way around the triangle
%       s: Number of flips of the triangle
%   Output:
%       M: Matrix which is an irreducible representation of the input


M = eye(4);

switch s
    case 0
        switch r
            case 1
                M(3,3) = -1/2;
                M(3,4) = -1/2 * sqrt(3);
                M(4,3) = 1/2 * sqrt(3);
                M(4,4) = -1/2;
            case 2
                M(3,3) = -1/2;
                M(3,4) = 1/2 * sqrt(3);
                M(4,3) = -1/2 * sqrt(3);
                M(4,4) = -1/2;
        end
    case 1
        switch r
            case 0
                M(2,2) = -1;
                M(3,3) = 1/2;
                M(3,4) = -1/2 * sqrt(3);
                M(4,3) = -1/2 * sqrt(3);
                M(4,4) = -1/2;
            case 1
                M(2,2) = -1;
                M(3,3) = -1;
            case 2
                M(2,2) = -1;
                M(3,3) = 1/2;
                M(3,4) = 1/2 * sqrt(3);
                M(4,3) = 1/2 * sqrt(3);
                M(4,4) = -1/2;
        end
end

