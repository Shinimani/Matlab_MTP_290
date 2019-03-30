function [x1] = seidel(A,b,tol,maxiter)
n = length(b);
x = zeros(n,1);
x1=x;
%x=[6;4;-2;-3;-3]
i=1;
B=A;
C=b;
for j=1:n
   C(j)=C(j)/B(j,j);
   B(j,:) = B(j,:)/B(j,j);
   B(j,j) = 0;
end
for i=1:n
    x1(i) = C(i)-B(i,1:i-1)*x1(1:i-1) - B(i,i+1:n)*x(i+1:n);
end
%x1 = C-B*x;
x2=x1;
for i=1:n
    x2(i) = C(i)-B(i,1:i-1)*x2(1:i-1) - B(i,i+1:n)*x1(i+1:n);
end
%x2 = C-B*x1;
p=1;
mu=1;
while i<maxiter && norm(x2-x1)>tol
    x0=x;
    x=x1;
    x1=x2;
    for i=1:n
    x2(i) = C(i)-B(i,1:i-1)*x2(1:i-1) - B(i,i+1:n)*x1(i+1:n);
    end
    %x2= C-B*x1;
    p = abs(log((norm(x2-x1))/(norm(x1-x)))/log((norm(x1-x))/(norm(x-x0))))
    mu = norm(x2-x1)/((norm(x1-x)))
    i=i+1;
end
i