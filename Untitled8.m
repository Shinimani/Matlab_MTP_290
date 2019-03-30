


syms f(x)
f(x) = 4*sin(x/2) + x - 2*pi;

fd(x) = diff(f(x));

x0=0;
x1=1;

while(abs(x1-x0) > 10^-5)
    x0=x1;
    x1= x0 - (f(x0)/fd(x0));
end

disp(double(2*sin(x1/2)));