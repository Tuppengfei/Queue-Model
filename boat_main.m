n=1000;

x = zeros(1,n);%每天到达的船数量；
a = zeros(1,n);%每天需要卸货的船数量；
b = zeros(1,n);%每天实际卸货的船的数量；
d = zeros(1,n);%每天推迟的卸货船数量；

for i=1:n
 x(i)=boatnum;
end

a(1)=x(1);
if a(1)>4 
    b(1)=4;
else 
    b(1)=a(1);
end
d(1)=a(1)-b(1);

for i=2:n
    a(i)=x(i)+d(i-1); 
     if a(i)>4 
         b(i)=4;
          else 
b(i)=a(i);   
     end
      d(i)=a(i)-b(i); 
end


 Total=sum(d); 
 Aver=Total/n;

 disp(Total)
 disp(Aver)