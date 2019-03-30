function z = bisection(a, b, e)

z = (a+b)/2;
i=0;
%fz = f(z);
% temp = fz;
%temp = a;
while abs(f(z))>e && i<50
    if (((f(z)) * (f(a)))<0)
        b=z;
        z = (z + a)/2;
        i=i+1;
    else 
        a = z;
        z = (z + b)/2;
        i=i+1;
    end
end
if i==50
    fprintf("max iterations reached");
    fprintf("%d", z);
else
    fprintf("answer is");
    fprintf("%d", z);
    
end


