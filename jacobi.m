function [x1] = jacobi(A,b,tol,maxiter)
n = length(b);
x = zeros(n,1);
%x=[6;4;-2;-3;-3]
i=1;
B=A;
C=b;
for j=1:n
   C(j)=C(j)/B(j,j);
   B(j,:) = B(j,:)/B(j,j);
   B(j,j) = 0;
end
x1 = C-B*x;
x2 = C-B*x1;
p=1;
mu=1;
while i<maxiter && norm(x2-x1)>tol
    x0=x;
    x=x1;
    x1=x2;
    x2= C-B*x1;
    p = abs(log((norm(x2-x1))/(norm(x1-x)))/log((norm(x1-x))/(norm(x-x0))))
    mu = norm(x2-x1)/((norm(x1-x)))
    i=i+1;
end
i
