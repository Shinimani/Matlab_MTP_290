function y = Euler(a,b,ya,h)
x=a:h:b;
y=zeros(size(x));
z=zeros(size(x));
w=zeros(size(x));
u=zeros(size(x));


y(1)=ya;
z(1)=ya;
w(1)=ya;
u(1)=ya;
for i = 1:(length(x)-1)
    %Heun's
    z(i+1) = z(i) + h*(f(x(i),z(i)))
    
    %Euler's
    y(i+1) = y(i) + h*(f(x(i),y(i)) + f(x(i+1),z(i+1)))/2
    
    %RK2
    xhalf = (x(i) + x(i+1))/2;
    wp = w(i) + h*f(x(i),w(i))/2;
    w(i+1) = w(i) + h*f(xhalf,w(i))
    
    %RK4
    y1 = u(i);
    y2 = u(i) + h*f(x(i),y1)/2;
    y3 = u(i) + h*f(xhalf,y2)/2;
    y4 = u(i) + h*f(xhalf,y3);
    u(i+1) = u(i) + h*(f(x(i),y1) + 2*f(xhalf,y2) + 2*f(xhalf,y3) + f(xhalf,y4))/6 
    
end
plot(x,y)
plot(x,z)
plot(x,w)
plot(x,u)
