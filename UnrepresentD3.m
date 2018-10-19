function [r,s] = UnrepresentD3(M)
%Converts a representation of D3 to its corresponding element.
%This function is the inverse of the function RepresentD3.
%   Input:
%       M: Matrix which is an irreducible representation of the input
%   Output:
%       r: Number of rotations a third of the way around the triangle
%           Must be 0,1 or 2
%       s: Number of flips of the triangle
%           Must be 0 or 1

    switch M(2,2)
        case 1
            s = 0;
            switch M(3,4)
                case 0
                    r = 0;
                case -1/2 * sqrt(3)
                    r = 1;
                case 1/2 * sqrt(3)
                    r = 2;
            end
        case -1
            s = 1;
            switch M(3,4)
                case 0
                    r = 1;
                case -1/2 * sqrt(3)
                    r = 0;
                case 1/2 * sqrt(3)
                    r = 2;
            end
    end
end