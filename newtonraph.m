function [an] = newtonraph(in, e, max)
ns = zeros(1,max);
ns(1) = in;
ns(2) = ns(1) - (f(ns(1))/fdash(ns(1)));
ns(3) = ns(2) - (f(ns(2))/fdash(ns(2)));
ns(4) = ns(3) - (f(ns(3))/fdash(ns(3)));
an = ns(3);

%an = in;
%an1 = an;
%an2=an;
%an3=an;
parr = zeros(1,max);
%parr(1) = 0;
i =4;
j=4;
%p=0;
c=(ns(j)-ns(j-1))/(ns(j-1)-ns(j-2));
    m = 1/(1-c);

while(f(ns(j))>e && i < max)
    ns(j+1)=ns(j) - (f(ns(j))/fdash(ns(j)));
    parr(j-3) = log((ns(j)-ns(j-1))/(ns(j-1)-ns(j-2)))/log((ns(j-1)-ns(j-2))/(ns(j-2)-ns(j-3)));
    
    


%    an1 = an - (f(an)/fdash(an));
%    an2 = an1 - (f(an1)/fdash(an1));
%    an3 = an2 - (f(an2)/fdash(an2));
%    p = log((an3-an2)/(an2-an1))/log((an2-an1)/(an1-an));
    c=(ns(j)-ns(j-1))/(ns(j-1)-ns(j-2));
    j = j+1;
    m = 1/(1-c);
%    an = an3;
    
    i = i+1;
end
an = ns(j);
ns
parr

disp("c is");
disp(c);
disp("multiplicity is");
disp(m);
disp("i is");
disp(i);
disp("order is");
if(j>4)
    disp(parr(j-4));
else 
    disp(log((ns(j)-ns(j-1))/(ns(j-1)-ns(j-2)))/log((ns(j-1)-ns(j-2))/(ns(j-2)-ns(j-3))));
%disp(ns);


%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


end

