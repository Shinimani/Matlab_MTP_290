A=[[10,-7,0];[-3,2.099,6];[5,-1,5]];
n = size(A,1);

for i = 1:n-1
    p = A(i+1:n,i)/A(i,i);
    A(i+1:n,:) = A(i+1:n,:) - p*A(i,:);
 %   b(i+1:n,:) = b(i+1:n,:) - p*b(i,:);
  %  for j = (i+1):n
  %     p = A(j,i)/A(i,i);
  %      b(j)=b(j) - p*b(i);
  %      A(j,:) = A(j,:) - p*A(i,:);
        %for k = 1:n
        %    A(j,k) = A(j,k) - p*A(i,k);
        %end
  %  end
end
l = A(1,1);
for k=2:n
    l=l*A(k,k);
end
l
%m = backwardsub(A,b);
