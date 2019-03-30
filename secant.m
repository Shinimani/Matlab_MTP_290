function an = secant(linit, rinit, tol, iter )
ns=zeros(1,max);
parr=zeros(1,max);
ns(1) = linit;
ns(2) = rinit;
ns(3) = ns(2) - f(ns(2))*((ns(2)-ns(1))/(f(ns(2))-f(ns(1)));
%j=3;
i=3;
    %an = an1 - f(an1)*((an1-an2)/(f(an1)-f(an2));
    %an3=an2;
    %an2=an1;
    %an1=an;
while(f(ns(i))>tol && i<iter)
    ns(i+1) = ns(i) - f(ns(i))*((ns(i)-ns(i-1))/(f(ns(i))-f(ns(i-1)));
    i=i+1;
    parr(i-3) = log((ns(i)-ns(i-1))/(ns(i-1)-ns(i-2)))/log((ns(i-1)-ns(i-2))/(ns(i-2)-ns(i-3)));
    c=(ns(i)-ns(i-1))/(ns(i-1)-ns(i-2));
    m = 1/(1-c);

%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here


end
j=i;
an = ns(j-1);

disp("c is");
disp(c);
disp("multiplicity is");
disp(m);
disp("i is");
disp(i);
disp("order is");
disp(parr(j-4));





