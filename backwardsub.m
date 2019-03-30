function [y] = backwardsub(A,b)

%A=[[1,0,0];[1,1,0];[3,.5,1]]

%b = [1,2,1]'
n = size(A,1);
y = zeros(1,n);
y(n) = b(n)/A(n,n);
for i = n-1:-1:1
    y(i) = b(i)/A(i,i);
    for j = n:-1:(i+1)
        y(i) = y(i) - ((A(i,j))/(A(i,i)))*(y(j));
    end
    %y(i)=y(i) + ;
end

y=y';


