function num = boatnum

boat=0:7;

prob=[0.05,0.1,0.1,0.25,0.20,0.15,0.1,0.05];

n=length(prob);
qu = zeros(1,n+1);
qu(1)=0;

for i = 1:n
    qu(i+1)=qu(i)+prob(i);
end
qu(n+1)=1.01;
r = rand(1);
for i=1:n
    if(r>qu(i)&&r<qu(i+1))
        num = boat(i);
    end
end

return