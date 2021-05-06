%非齐次Poisson过程的模拟
%时间为[0,8],密度lamda=10 lambda(t) = 8.924 - 1.584 * cos(pi * t / 1.51)
% + 7.897 * sin(pi * t / 3.02) - 10.434 * cos(pi * t / 4.53) + 4.293
% * cos(pi * t / 6.04)
clear;
t=0;I=0;
T=8;S=[];
while t<=T
    U=rand(1,1);
    t=t-log(U);
    lamda=10;
    lamdat=lambda(t);
    if t<=T
        U1=rand(1,1);
        if U1<=lamdat / lamda%是否计数
            I=I+1;
            times(I) = t;
            S(I)=t;
        end
%         bar(S(I),I);%以时间为横坐标 发生次数为纵坐标
%         hold on
    end

end
x=0:1:length(S);w(1)=0;
for p=1:length(S)
   w(p+1) = S(p); 
end
%指定切分区间
xbins = [0.5,1.5,2.5,3.5,4.5,5.5,6.5,7.5];
%子图1
subplot(1,2,1);
stairs(w,x, 'Marker','.','MarkerFaceColor', 'r');
title("0-8h的事件发生时间");
%子图2
subplot(1,2,2);
hist(w, xbins);
[n,hx]=hist(w, xbins);
axis([0,9,0,max(n)+2]);
str = num2str(n');
text(hx-0.1,n+0.2,str,'Color','r');
title("0-8h每小时发生事件数频数分布");
S
I
