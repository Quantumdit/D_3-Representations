function M = RepresentD3(r,s)
%Gives the irreducible representation of an element of D_3, the symmetries
%of an equilateral triangle
%   Input:
%       r: Number of rotations a third of the way around the triangle
%           Must be 0,1 or 2
%       s: Number of flips of the triangle
%           Must be 0 or 1
%   Output:
%       M: Matrix which is an irreducible representation of the input

if (r ~= 0) && (r ~= 1) && (r ~= 2)
    error('Invalid number of rotations (r)');
elseif (s ~= 0) && (s ~= 1)
    error('Invalid number of flips (s)');
end

M = eye(4);

switch r
    case 0
        if (s == 1)
            M(2,2) = -1;
            M(3,3) = 1/2;
            M(3,4) = -1/2 * sqrt(3);
            M(4,3) = -1/2 * sqrt(3);
            M(4,4) = -1/2;
        end
    case 1
        switch s
            case 0
                M(3,3) = -1/2;
                M(3,4) = -1/2 * sqrt(3);
                M(4,3) = 1/2 * sqrt(3);
                M(4,4) = -1/2;
            case 1
                M(2,2) = -1;
                M(3,3) = -1;
        end
    case 2
        switch s
            case 0
                M(3,3) = -1/2;
                M(3,4) = 1/2 * sqrt(3);
                M(4,3) = -1/2 * sqrt(3);
                M(4,4) = -1/2;
            case 1
                M(2,2) = -1;
                M(3,3) = 1/2;
                M(3,4) = 1/2 * sqrt(3);
                M(4,3) = 1/2 * sqrt(3);
                M(4,4) = -1/2;
        end
end

