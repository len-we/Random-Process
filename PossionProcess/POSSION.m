
%max_times为生成的点数
%lambda为平均值函数
max_times = 80;

%生成第一个点，注意T(n)是waiting time是教材中的Wn
i=1;T(1)=exprnd(1/lambda(0));
while(i<max_times)
   T(i+1)=T(i)+exprnd(1/lambda(T(i)));
   i=i+1;
end

% w(n)只是在最开始加一个0点，所以不严格的说代码的T和w都是Wn
x=0:1:max_times;w(1)=0;
for p=1:i
   w(p+1)=T(p);
end

%length(w)

%length(x)

stairs(w,x);