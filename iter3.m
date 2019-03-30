function z = iter3( x,n)
k = 0;
z=x;
while k<n
    z = 0.5*(z + f(z));
    k = k+1;
end

%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


end
