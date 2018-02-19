function x = getUniqueRandom( n,min,max )
x=randi([min max],1,n);
while length(x)~=length(unique(x))
  x=randi([min max],1,n);
end;
end

