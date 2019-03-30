function yf = foy(x)
n = length(x)
for i = 1:n
    yf(i) = fof(x(i));
end
