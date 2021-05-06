%lamda=2;
Tmax=80;
max_times = 80;

i=1;T(1)=exprnd(1/lambda(0));

while(i<max_times)

   T(i+1)=T(i)+exprnd(1/lambda(T(i)));

   i=i+1;

end

% T(i)=Tmax;
x=0:1:max_times;w(1)=0;

for p=1:i

   w(p+1)=T(p);

end

%length(w)

%length(x)

stairs(w,x);