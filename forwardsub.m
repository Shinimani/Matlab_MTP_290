function [x] = forwardsub(A,b)

%A=[[1,0,0];[1,1,0];[3,.5,1]]

%b = [1,2,1]'
n = size(A);
for i = 1:n
    x(i) = b(i);
    for j = 1:(i-1)
        x(i) = x(i) - ((A(i,j))*(x(j)));
    end
end

x = x'

