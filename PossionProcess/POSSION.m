lamda=2;Tmax=80;

i=1;T(1)=random('exponential',lamda);

while(T(i)<Tmax)

   T(i+1)=T(i)+random('exponential',lamda);

   i=i+1;

end

T(i)=Tmax;x=0:1:i;w(1)=0;

for p=1:i

   w(p+1)=T(p);

end

%length(w)

%length(x)

stairs(w,x);