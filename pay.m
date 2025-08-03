n=100;

dt = exprnd(10,1,n);%每个人到达的时间点
ds = normrnd(6.5,1.2,1,n);%每个人接受服务所需时长

a=zeros(1,n);%每个客户到达时间点
b=zeros(1,n);%每个客户接受服务的时间点
c=zeros(1,n);%每个客户离开时间点

a(1)=0;
for i =2:n
    a(i)=a(i-1)+dt(i-1);
end

b(1)=0;
c(1)=b(1)+ds(1);

for i = 2:n
    if(a(i)<c(i-1)); b(i)=c(i-1);%如果i的到达时间点早于i-1的结束时间点，则i接受服务的时间点为i-1离开的时间点
    else 
        b(i)=a(i);
    end
    c(i)=b(i)+ds(i);
end

speed=zeros(1,n);

for i = 2:n
    speed(i)=c(i)-a(i);%客户i在系统中的逗留时间
end

T=c(n);%最后一个客户离开时间，即为总运营时间      
p=sum(ds)/T; %服务率

avg=sum(speed)/n;%平均每人等待时间

disp(p)
disp(avg)




