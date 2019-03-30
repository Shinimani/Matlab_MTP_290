function ans1 = laginterv(x,X,Y)
n=length(X);
%syms x;
if n ~= length(Y)
    fprintf("not equal lengths");
else
    ans1 = x;
    for i=1:n
        a(i)=x;
        a(i)=Y(i);
        for j = 1:n
            if i~=j
                a(i)=a(i)*(x-X(j))/(X(i)-X(j));
            end
        end
        ans1 = ans1 + a(i);
    end
    ans1 = ans1-x;
    
end

end