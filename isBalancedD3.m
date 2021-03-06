function b = isBalancedD3(r,s)
%Will return a boolean whether or not the element of D3 is balanced
%   Input:
%       r: Number of rotations a third of the way around the triangle
%           Must be 0,1 or 2
%       s: Number of flips of the triangle
%           Must be 0 or 1
%   Output:
%       b: true if the element of D3 is balanced, false otherwise

M = RepresentD3(r,s);


%Construct S, which will be equal to M iff [r,s] is balanced
S = zeros(4);

for r_prime = 0:2
    for s_prime = 0:1
        S = S + RepresentD3(r_prime,s_prime);
    end
end

S = (1/3) * S;

%Check if [r,s] is balanced
b = isequal(M,S);

end

